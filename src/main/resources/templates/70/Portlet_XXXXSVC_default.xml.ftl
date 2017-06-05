<#include "./valuables.ftl">
<#assign createPath = "${createPath_val}/${application.model}/${application.model}-service/src/main/resources/META-INF/resource-actions/default.xml">
<?xml version="1.0"?>
<!DOCTYPE resource-action-mapping PUBLIC "-//Liferay//DTD Resource Action Mapping 7.0.0//EN" "http://www.liferay.com/dtd/liferay-resource-action-mapping_7_0_0.dtd">

<resource-action-mapping>
    <model-resource>
        <model-name>${application.packageName}</model-name>
        <portlet-ref>
            <portlet-name>${packageSnake}_web_portlet_${capFirstModel}WebPortlet</portlet-name>
        </portlet-ref>
        <root>true</root>
        <weight>1</weight>
        <permissions>
            <supports>
                <action-key>ADD_ENTRY</action-key>
                <action-key>PERMISSIONS</action-key>
            </supports>
            <site-member-defaults>
            </site-member-defaults>
            <guest-defaults>
            </guest-defaults>
            <guest-unsupported>
                <action-key>ADD_ENTRY</action-key>
                <action-key>PERMISSIONS</action-key>
            </guest-unsupported>
        </permissions>
    </model-resource>
    <model-resource>
        <model-name>${application.packageName}.model.${capFirstModel}</model-name>
        <portlet-ref>
            <portlet-name>${packageSnake}_web_portlet_${capFirstModel}WebPortlet</portlet-name>
        </portlet-ref>
        <weight>2</weight>
        <permissions>
            <supports>
                <action-key>DELETE</action-key>
                <action-key>PERMISSIONS</action-key>
                <action-key>UPDATE</action-key>
                <action-key>VIEW</action-key>
            </supports>
            <site-member-defaults>
                <action-key>DELETE</action-key>
                <action-key>UPDATE</action-key>
                <action-key>VIEW</action-key>
            </site-member-defaults>
            <guest-defaults>
                <action-key>VIEW</action-key>
            </guest-defaults>
            <guest-unsupported>
                <action-key>PERMISSIONS</action-key>
            </guest-unsupported>
        </permissions>
    </model-resource>
</resource-action-mapping>