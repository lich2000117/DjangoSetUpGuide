from django.contrib import admin
from django.apps import apps
from .models import *

## Setup how many choice can we add in one page, TabularInline or StackedInline
class EquipDetailInline(admin.TabularInline):
    model = Equipment
    extra = 0
    fields = ['model', 'price', 'type']
    can_delete = False
    def has_change_permission(self, request, obj=None):
        return False

class ProducerInline(admin.TabularInline):
    model = Equipment
    extra = 0
    fields = ['name', 'model', 'type', 'price']
    can_delete = False
    show_change_link = True
    def has_change_permission(self, request, obj=None):
        return False

class ContractInline(admin.TabularInline):
    model = Contract
    extra = 0
    fields = ['date','warranty']
    can_delete = False
    show_change_link = True
    def has_change_permission(self, request, obj=None):
        return False
    def has_add_permission(self, request, obj=None):
        return False
    
class EquipInline(admin.TabularInline):
    model = EquipmentsInContract
    extra = 0
    readonly_fields = ('contract_link',)
    can_delete = False
    show_change_link = False
    def has_change_permission(self, request, obj=None):
        return False
    def has_add_permission(self, request, obj=None):
        return False
        

class RecordInline(admin.TabularInline):
    model = EquipmentsInContract
    extra = 0
    readonly_fields = ('get_equipment_detail', 'equip_link')
    can_delete = True
    show_change_link = False
    def has_change_permission(self, request, obj=None):
        return False
    def has_add_permission(self, request, obj=None):
        return True



## Individual Contract page set up
class ContractAdmin(admin.ModelAdmin):
     ## Change the order of the displayed fields, and set Title for each field
    fieldsets = [
        ('合同信息',               {'fields': ['hospital']}),
        (None,               {'fields': ['agentcompany']}),
        (None,               {'fields': ['date']}),
         (None,               {'fields': ['file_tag']}),
         (None,               {'fields': ['File']}),
         (None,               {'fields': ['warranty']}),
         (None,               {'fields': ['text']}),
    ]
    # 如果要修改， 使用下列：
    #readonly_fields = ('file_tag','hospital','agentcompany','date','warranty')
    readonly_fields = ('file_tag',)
    ## what's inside each question:
    inlines = [RecordInline]

    ## what to display at the homepage of all contracts
    list_display = ('__str__', 'date',)

    # can use filter of date and ordering
    ordering = ('-date',)
    list_filter = ['date', 'hospital','agentcompany']
    # can search by text and its date
    search_fields = ['hospital__name','agentcompany__name', 'date']
    ##Other useful attribute: list_per_page, date_hierarchy, list_display
    list_per_page = 30
    def has_delete_permission(self, request, obj=None):
        return True




## Individual Contract page set up
class EquipmentAdmin(admin.ModelAdmin):
     ## Change the order of the displayed fields, and set Title for each field
    fieldsets = [
        ('设备信息',               {'fields': ['name']}),
        (None,               {'fields': ['model']}),
        (None,               {'fields': ['type']}),
        (None,               {'fields': ['producer']}),
        (None,               {'fields': ['price']})
    ]
    inlines = [EquipInline]
    # 如果要修改， 使用下列：
    #readonly_fields = ('name','model','price','type','producer')
    ## what to display at the homepage of all contracts
    list_display = ('name', 'model', 'type', 'producer','price')
    # can use filter of date
    list_filter = ['producer', 'type']
    # can search by text and its date
    search_fields = ['producer__name','name','model']
    list_per_page = 30
    def has_delete_permission(self, request, obj=None):
        return True




## Individual Contract page set up
class ProducerAdmin(admin.ModelAdmin):
    fieldsets = [
        ('厂家信息',               {'fields': ['name']}),
        (None,               {'fields': ['location']}),
        (None,               {'fields': ['tel']}),
    ]
    inlines = [ProducerInline]
    # 如果要修改， 使用下列：
    #readonly_fields = ('name','location','tel')
    # can use filter of date
    list_filter = ['name']
    # can search by text and its date
    search_fields = ['name']
    list_per_page = 30
    def has_delete_permission(self, request, obj=None):
        return True
    



## Individual Contract page set up
class HospitalAdmin(admin.ModelAdmin):
    fieldsets = [
        ('机构信息',               {'fields': ['name']}),
        (None,               {'fields': ['location']}),
        (None,               {'fields': ['tel']}),
    ]
    # 如果要修改， 使用下列：
    #readonly_fields = ('name','location','tel')
    inlines = [ContractInline, EquipInline]
    # can use filter of date
    list_filter = ['name']
    # can search by text and its date
    search_fields = ['name','contract__date']
    list_per_page = 30
    def has_delete_permission(self, request, obj=None):
        return True

## Individual Contract page set up
class AgentCompanyAdmin(admin.ModelAdmin):
    fieldsets = [
        ('机构信息',               {'fields': ['name']}),
        (None,               {'fields': ['location']}),
        (None,               {'fields': ['tel']}),
        (None,               {'fields': ['representative']}),
    ]
    inlines = [ContractInline, EquipInline]
    # 如果要修改， 使用下列：
    # readonly_fields = ('name','location','tel','representative')
    # can use filter of date
    list_filter = ['name']
    # can search by text and its date
    search_fields = ['name','contract__date']
    list_per_page = 30
    def has_delete_permission(self, request, obj=None):
        return True


## EquipmentInConract
class EquipmentInConractAdmin(admin.ModelAdmin):
    readonly_fields = ('equipment_detail',)
    def has_delete_permission(self, request, obj=None):
        return True

    


admin.site.register(Contract, ContractAdmin)
admin.site.register(Hospital, HospitalAdmin)
admin.site.register(Agentcompany, AgentCompanyAdmin)
admin.site.register(Producer, ProducerAdmin)
admin.site.register(Equipment, EquipmentAdmin)
#admin.site.register(EquipmentsInContract, EquipmentInConractAdmin)
