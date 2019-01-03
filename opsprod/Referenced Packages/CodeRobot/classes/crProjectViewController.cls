/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class crProjectViewController {
    @RemoteAction
    global static Boolean checkRecordExists(String recordId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult deleteRecordByParentId(String projectId, List<String> lstParentCRPId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult findInvalidProjectRecords(String projectId, String res) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult findInvalidProjectRecordsV2(String projectId, String res, Boolean shouldAutoDel) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crSetupHandler.crSetupResponse generateStep_analyzeConfig() {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crSrcGeneration.SourceGenResult generateStep_collectFVP(String projectId, String resultJSON) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crSrcGeneration.SourceGenResult generateStep_deleteOldFVPs(String projectId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crSrcGeneration.SourceGenResult generateStep_srcCode(String projectId, String res) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crSrcGeneration.SourceGenResult generateStep_updateProject(String projectId, String res) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getListViewObjects(String projectId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getListViewRecords(String objName, String listViewId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getLookupRecordsByParentId(String parentId, String projectId) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getProjectContent(String projectId, Integer level, String displayedTheme) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getRelationshipListOptions(String parentId, String projectId, String rrJSON) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult getRelationshipRecords(String parentId, String relationshipName, String listViewId, String projectId) {
        return null;
    }
    @Deprecated
    global static CodeRobot.crProjectViewController.RemoteResult saveRecordsToProject(String projectId, String parentCRPId, String recordArrJSON, String relType, String displayedTheme) {
        return null;
    }
    @RemoteAction
    global static CodeRobot.crProjectViewController.RemoteResult saveRecordsToProjectV2(String projectId, String recordArrJSON, String relType, String displayedTheme, Boolean isAuto) {
        return null;
    }
global class FieldOrColumnInfo {
}
global class ListViewDescribe {
}
global class ObjectInfoWrapper implements System.Comparable {
}
global class ObjectTabInfo {
}
global class OneProjectRecord {
}
global class RelationshipWrapper {
}
global class RemoteResult {
}
global class SelectedRecord {
}
}
