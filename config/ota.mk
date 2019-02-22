ifneq ($(IS_GENERIC_SYSTEM_IMAGE), true)
ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CUSTOM_OTA_VERSION_CODE := o9x

CUSTOM_PROPERTIES += \
    com.simplixone.ota.version_code=$(CUSTOM_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/com.simplixone.ota.xml:system/etc/permissions/com.simplixone.ota.xml

endif
endif
