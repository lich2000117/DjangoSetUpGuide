# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.utils.html import format_html, mark_safe

## 中介公司 Model
class Agentcompany(models.Model):
    agentcompany_id = models.IntegerField(db_column='AgentCompany_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45,verbose_name="名称")  # Field name made lowercase.
    tel = models.BigIntegerField(db_column='Tel',verbose_name="电话",blank=True, null=True)  # Field name made lowercase.
    location = models.CharField(db_column='Location', max_length=80,verbose_name="地点", blank=True, null=True)  # Field name made lowercase.
    representative = models.CharField(db_column='Representative',verbose_name="代表人", max_length=45, blank=True, null=True)  # Field name made lowercase.
    
    def __str__(self):
        return self.name
    
    class Meta:
        managed = False
        db_table = 'AgentCompany'
        verbose_name = '中介公司'
        verbose_name_plural = '中介公司'

## 医院 Model
class Hospital(models.Model):
    hospital_id = models.IntegerField(db_column='Hospital_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45, verbose_name="名称", blank=True, null=True)  # Field name made lowercase.
    location = models.CharField(db_column='Location', max_length=45, verbose_name="地址", blank=True, null=True)  # Field name made lowercase.
    tel = models.CharField(db_column='Tel', max_length=45, verbose_name="电话", blank=True, null=True)  # Field name made lowercase.
    def __str__(self):
        return self.name
    
    class Meta:
        managed = False
        db_table = 'Hospital'
        verbose_name = '医院列表'
        verbose_name_plural = '医院列表'
    
## 合同 Model
class Contract(models.Model):
    contract_id = models.IntegerField(db_column='Contract_ID', primary_key=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date',verbose_name="签订日期")  # Field name made lowercase.
    hospital = models.ForeignKey('Hospital', models.DO_NOTHING, db_column='Hospital_ID',verbose_name="出售医院", blank=True, null=True)  # Field name made lowercase.
    agentcompany = models.ForeignKey(Agentcompany, models.DO_NOTHING, db_column='AgentCompany_ID',verbose_name="中介公司", blank=True, null=True)  # Field name made lowercase.
    warranty = models.IntegerField(db_column='Warranty',verbose_name="保修时长(月)", blank=True, null=True)  # Field name made lowercase.
    #合同文件存储
    File = models.FileField(db_column='File',verbose_name="上传附件(单个PDF)",blank=True,null = True,max_length=6000)
    text = models.CharField(db_column='text',verbose_name='备注',blank=True,null=True,max_length=300)

    # 下载 Field 配置， return 当前指定文件路径
    def file_tag(self):        
        if self.File:
            return format_html("<a href='/media/{0}'>点击下载附件</a>", self.File)
        else:
            return '当前无附件，⬇️请上传(只能上传单一PDF，可包含多张图片)'

    def get_date(self):
        return str(self.date)

    file_tag.short_description = '已有附件'
    file_tag.allow_tags = True

    #合同标题显示内容顺序为： 医院 》中介公司 》空
    def __str__(self):
        if self.hospital:
            display = self.hospital
        elif self.agentcompany:
            display = self.agentcompany
        else:
            display = ''
        return str(display)
    
    class Meta:
        managed = False
        db_table = 'Contract'
        verbose_name = '销售合同'
        verbose_name_plural = '销售合同'

## 设备 Model
class Equipment(models.Model):
    equipment_id = models.IntegerField(db_column='Equipment_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45,verbose_name="名称")  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=45,verbose_name="型号")  # Field name made lowercase.
    price = models.CharField(db_column='Price', max_length=45,verbose_name="进货价",blank=True, null=True)  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=45,verbose_name="类型")  # Field name made lowercase.
    #单独用foreign key存储生产商，所对应的 合同
    producer = models.ForeignKey('Producer', models.DO_NOTHING, db_column='Producer_ID',verbose_name="生产厂商", blank=True, null=True)  # Field name made lowercase.
    contracts = models.ManyToManyField(Contract, through='EquipmentsInContract')
    ## 显示设备名字以及对应型号
    def __str__(self):
        return str(self.name) + ' || ' + str(self.model)
    
    ## 新建一个column显示型号+种类+厂商
    def get_mode_type_producer(self):
        return f'{("型号：" + str(self.model)):<25}' + "｜\t种类：" + str(self.type) + "｜\t生产厂商：" + self.producer.__str__()

    class Meta:
        managed = False
        db_table = 'Equipment'
        verbose_name = '设备清单'
        verbose_name_plural = '设备清单'

## 销售记录，为中间表， through table， many to many
class EquipmentsInContract(models.Model):
    EquipmentsInContractID = models.AutoField(primary_key = True, db_column='EquipmentsInContractID')  # Field name made lowercase.
    equipment = models.ForeignKey(Equipment, db_column='Equipment_ID',verbose_name="设备详情", on_delete=models.CASCADE, related_name='Equipment')  # Field name made lowercase.
    contract = models.ForeignKey(Contract, db_column='Contract_ID',verbose_name="合同详情", on_delete=models.CASCADE, related_name='Contract')  # Field name made lowercase.
    numbersold = models.IntegerField(db_column='NumberSold',verbose_name="售出数量", blank=True, null=True)  # Field name made lowercase.
    pricesold = models.CharField(db_column='PriceSold',verbose_name="售出价格", max_length=45, blank=True, null=True)  # Field name made lowercase.
    hospital = models.ForeignKey(Hospital, db_column='hospital_id',verbose_name="医院名称", blank=True,null=True,on_delete=models.CASCADE, related_name='Hospital')
    agentcompany = models.ForeignKey(Agentcompany, db_column='agentcompany_id',verbose_name="中介公司",blank=True,null=True, on_delete=models.CASCADE, related_name='Agentcompany')
    def __str__(self):
        return self.contract.get_date() + ' ' + self.contract.__str__()

    def get_equipment_detail(self):
        return str(self.equipment.get_mode_type_producer())

    ## link到所对应的contract
    def contract_link(self):
        return format_html("<a href='/laitaiapp/contract/{0}'>对应合同详情</a>", getattr(self.contract,'contract_id'))
        
    ## link到所对应的equipment
    def equip_link(self):
        return format_html("<a href='/laitaiapp/equipment/{0}'>对应设备详情</a>", getattr(self.equipment,'equipment_id'))

    class Meta:
        managed = False
        db_table = 'EquipmentsinContract'
        verbose_name = '所有合同汇总销售记录'
        verbose_name_plural = '所有合同汇总销售记录'

    get_equipment_detail.short_description = '交易设备详情'
    contract_link.short_description = '合同链接'
    equip_link.short_description = '设备连接'


## 生产厂家
class Producer(models.Model):
    producer_id = models.IntegerField(db_column='Producer_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45,verbose_name="名称")  # Field name made lowercase.
    tel = models.CharField(db_column='Tel', max_length=45,verbose_name="电话", blank=True, null=True)  # Field name made lowercase.
    location = models.CharField(db_column='Location', max_length=45,verbose_name="地址", blank=True, null=True)  # Field name made lowercase.
    def __str__(self):
        return self.name
    
    class Meta:
        managed = False
        db_table = 'Producer'
        verbose_name = '设备生产商'
        verbose_name_plural = '设备生产商'
