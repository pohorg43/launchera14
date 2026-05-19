.class public Lcom/android/statistics/FolderStatisticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALLOW_COLLECT_ALL_PKG:Z = false

.field private static final EVENT_BIG_FOLDER_OPEN_BY_NAME_OR_STACK:Ljava/lang/String; = "bigFolder_open_by_name_or_stack"

.field private static final EVENT_CHANGE_RECOMMEND_FOLDER_SETTINGS:Ljava/lang/String; = "change_recommend_folder_settings"

.field private static final EVENT_CLICK_DISBAND_FOLDER:Ljava/lang/String; = "event_click_disband_folder"

.field private static final EVENT_FOLDER_CONTENT_INFO:Ljava/lang/String; = "app_count_in_one_folder"

.field private static final EVENT_FOLDER_COUNT:Ljava/lang/String; = "folder_count"

.field private static final EVENT_FOLDER_INFO:Ljava/lang/String; = "folder_info"

.field private static final EVENT_FOLDER_MAX_PAGE:Ljava/lang/String; = "folder_max_page"

.field private static final EVENT_FOLDER_RECOMMEND_OPEN:Ljava/lang/String; = "event_folder_recommend_open"

.field private static final EVENT_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "event_folder_recommend_switch"

.field private static final EVENT_GENERATE_FOLDER:Ljava/lang/String; = "generate_folder"

.field private static final EVENT_HOT_SEAT_APPS:Ljava/lang/String; = "hot_seat_apps"

.field private static final EVENT_ID_BIG_FOLDER_ALL_INFO:Ljava/lang/String; = "bigFolder_all_info"

.field private static final EVENT_ID_BIG_FOLDER_CONVERT:Ljava/lang/String; = "bigFolder_convert"

.field private static final EVENT_ID_BIG_FOLDER_ITEM_INFO:Ljava/lang/String; = "bigFolder_item_info"

.field private static final EVENT_ID_BIG_FOLDER_OPEN_CLICK:Ljava/lang/String; = "bigFolder_open_click"

.field private static final EVENT_ID_BIG_FOLDER_OPEN_LONG_CLICK:Ljava/lang/String; = "bigFolder_open_long_click"

.field private static final EVENT_ID_BIG_FOLDER_SCROLL_PAGE:Ljava/lang/String; = "bigFolder_scroll"

.field private static final EVENT_ID_FOLDER_SHORTCUT_TO_RENAME:Ljava/lang/String; = "folder_shortcut_to_rename"

.field private static final EVENT_MOVE_FOLDER_PAGE_EDIT_MODE:Ljava/lang/String; = "move_folder_page_edit_mode"

.field private static final EVENT_OPEN_FOLDER:Ljava/lang/String; = "open_folder"

.field private static final EVENT_REMOVE_FOLDER:Ljava/lang/String; = "remove_folder"

.field private static final EVENT_RENAME_FOLDER:Ljava/lang/String; = "rename_folder"

.field private static final EVENT_SOMFOLDER_CONVERT:Ljava/lang/String; = "somFolder_convert"

.field private static final EVENT_TOGGLE_MODE_GENERATE_FOLDER:Ljava/lang/String; = "toggle_mode_check_number_new_folder"

.field public static final EVENT_USER_HAS_MUST_PLAY:Ljava/lang/String; = "user_has_must_play"

.field public static final EVENT_USER_OPEN_MUST_PLAY:Ljava/lang/String; = "user_open_must_play"

.field private static final FOLDER_CREATE_BY_SYSTEM:Ljava/lang/String; = "1"

.field private static final FOLDER_CREATE_BY_USER:Ljava/lang/String; = "2"

.field private static final FOLDER_SIZE_TYPE_BIG:Ljava/lang/String; = "0"

.field private static final FOLDER_SIZE_TYPE_LITTLE:Ljava/lang/String; = "1"

.field private static final KEY_BIG_FOLDER_ALL_COUNT:Ljava/lang/String; = "bigFolder_all_count"

.field private static final KEY_BIG_FOLDER_ITEM_CELL:Ljava/lang/String; = "bigFolder_item_cell"

.field private static final KEY_BIG_FOLDER_ITEM_COUNT:Ljava/lang/String; = "bigFolder_item_count"

.field private static final KEY_BIG_FOLDER_ITEM_PKG:Ljava/lang/String; = "bigFolder_item_pkg"

.field private static final KEY_BIG_FOLDER_ITEM_SCREEN:Ljava/lang/String; = "bigFolder_item_screen"

.field private static final KEY_BIG_FOLDER_OPEN_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_EVENT_FOLDER_RECOMMEND_OPEN:Ljava/lang/String; = "open"

.field private static final KEY_EVENT_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "switch_status"

.field private static final KEY_FOLDER_BASE_INFO:Ljava/lang/String; = "folder_base_info"

.field private static final KEY_FOLDER_CELL:Ljava/lang/String; = "folder_cell"

.field private static final KEY_FOLDER_CONTENT_APP_COUNT:Ljava/lang/String; = "folder_content_app_count"

.field private static final KEY_FOLDER_CONTENT_COUNT:Ljava/lang/String; = "folder_content_count"

.field private static final KEY_FOLDER_CONTENT_ITEM_INFO:Ljava/lang/String; = "folder_content_item_info"

.field private static final KEY_FOLDER_CONTENT_SHORTCUT_COUNT:Ljava/lang/String; = "folder_content_shortcut_count"

.field private static final KEY_FOLDER_COUNT:Ljava/lang/String; = "folder_count"

.field private static final KEY_FOLDER_CREATE_TYPE:Ljava/lang/String; = "folder_create_type"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final KEY_FOLDER_INNER_PAGE_COUNT:Ljava/lang/String; = "folder_inner_page_count"

.field private static final KEY_FOLDER_ITEM:Ljava/lang/String; = "folder_item"

.field private static final KEY_FOLDER_ITEMS_NAME:Ljava/lang/String; = "folder_items_name"

.field private static final KEY_FOLDER_ITEMS_PKG_NAME:Ljava/lang/String; = "folder_items_pkg_name"

.field private static final KEY_FOLDER_MAX_PAGE:Ljava/lang/String; = "folder_max_page"

.field private static final KEY_FOLDER_MOVE_SCREEN_FROM:Ljava/lang/String; = "folder_move_screen_from"

.field private static final KEY_FOLDER_MOVE_SCREEN_TO:Ljava/lang/String; = "folder_move_screen_to"

.field private static final KEY_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field private static final KEY_FOLDER_NAME_CLICK_FOLDER:Ljava/lang/String; = "folder_name"

.field private static final KEY_FOLDER_SCREEN:Ljava/lang/String; = "folder_screen"

.field private static final KEY_FOLDER_SIZE:Ljava/lang/String; = "folder_size"

.field private static final KEY_FOLDER_TYPE_CLICK_FOLDER:Ljava/lang/String; = "folder_type"

.field public static final KEY_HAS_MUST_PLAY:Ljava/lang/String; = "has_must_play"

.field private static final KEY_HOT_SEAT_APPS:Ljava/lang/String; = "hot_seat_apps"

.field private static final KEY_LAUNCHER_MODE_CLICK_FOLDER:Ljava/lang/String; = "launcher_mode"

.field private static final KEY_LITTLE_FOLDER_ALL_COUNT:Ljava/lang/String; = "littleFolder_all_count"

.field public static final KEY_OPEN_MUST_PLAY:Ljava/lang/String; = "open_must_play"

.field private static final KEY_RECOMMEND_FOLDER_SETTINGS_STATES:Ljava/lang/String; = "recommend_folder_settings_states"

.field private static final KEY_SCROLL_TYPE:Ljava/lang/String; = "scroll_type"

.field private static final KEY_SNAP_PAGE_FROM:Ljava/lang/String; = "bf_scroll_from"

.field private static final KEY_SNAP_PAGE_TO:Ljava/lang/String; = "bf_scroll_to"

.field private static final LAUNCHER_STATE_EDIT:Ljava/lang/String; = "1"

.field private static final LAUNCHER_STATE_NORMAL:Ljava/lang/String; = "0"

.field private static final SCROLL_TYPE_IN_FOLDER:Ljava/lang/String; = "0"

.field private static final SCROLL_TYPE_ON_DESKTOP:Ljava/lang/String; = "1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatistics:Lcom/android/statistics/BaseStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/FolderStatisticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->lambda$statMoveFolder$4(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/statistics/FolderStatisticsManager;->lambda$statsFolderContentInfo$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/statistics/FolderStatisticsManager;->lambda$statsGenerateFolder$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->lambda$statsToggleModeGenerateFolder$3(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private getFolderBaseInfo(Lcom/android/launcher3/model/data/FolderInfo;I)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_92

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto/16 :goto_92

    :cond_c
    const-string p0, ",{"

    const-string v0, "folder_id"

    const-string v1, "="

    invoke-static {p0, v0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v2, ","

    const-string v3, "folder_name"

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "folder_size"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "0"

    goto :goto_3a

    :cond_38
    const-string v0, "1"

    :goto_3a
    const-string v3, "folder_screen"

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string v3, "folder_cell"

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const-string v3, ")"

    const-string v4, "folder_create_type"

    invoke-static {p0, v0, v3, v2, v4}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->mCreateType:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "folder_inner_page_count"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_92
    :goto_92
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$statMoveFolder$4(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "{packageName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_23

    const-string v0, "app_name"

    goto :goto_26

    :cond_23
    const-string/jumbo v0, "name"

    :goto_26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    return-void
.end method

.method private static synthetic lambda$statsBigFolderItem$0(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method private static synthetic lambda$statsFolderContentInfo$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    iget v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_14

    :cond_f
    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_14
    :goto_14
    const-string/jumbo p0, "{packageName:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p0, :cond_31

    const-string p0, "app_name"

    goto :goto_34

    :cond_31
    const-string/jumbo p0, "name"

    :goto_34
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    return-void
.end method

.method private static synthetic lambda$statsGenerateFolder$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    iget v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_14

    :cond_f
    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_14
    :goto_14
    const-string/jumbo p0, "{packageName:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p0, :cond_31

    const-string p0, "app_name"

    goto :goto_34

    :cond_31
    const-string/jumbo p0, "name"

    :goto_34
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    return-void
.end method

.method private static synthetic lambda$statsToggleModeGenerateFolder$3(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "{packageName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_23

    const-string v0, "app_name"

    goto :goto_26

    :cond_23
    const-string/jumbo v0, "name"

    :goto_26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    return-void
.end method

.method private statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAllFolderBaseInfo(Ljava/util/ArrayList;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_34

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_31

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v6

    if-eqz v6, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_25
    add-int/lit8 v4, v4, 0x1

    :goto_27
    invoke-direct {p0, v5, p2}, Lcom/android/statistics/FolderStatisticsManager;->getFolderBaseInfo(Lcom/android/launcher3/model/data/FolderInfo;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/statistics/FolderStatisticsManager;->statsFolderContentInfo(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_34
    if-gtz v3, :cond_38

    if-lez v4, :cond_5f

    :cond_38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "bigFolder_all_count"

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "littleFolder_all_count"

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "folder_base_info"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p2, "folder_info"

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_5f
    return-void
.end method

.method private statsBigFolderInfo(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_20

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_20

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {p0, v3}, Lcom/android/statistics/FolderStatisticsManager;->statsBigFolderItem(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    if-lez v2, :cond_3a

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_all_count"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "bigFolder_all_info"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_3a
    return-void
.end method

.method private statsBigFolderItem(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_cell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_7c

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    :cond_7c
    const-string p1, ""

    :goto_7e
    const-string v1, "bigFolder_item_pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "bigFolder_item_info"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderAppRecommendSwitch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v2

    const-string/jumbo v3, "switch_status"

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "1"

    goto :goto_1f

    :cond_1d
    const-string v1, "0"

    :goto_1f
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_23
    const-string v1, "-1"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    const-string v2, "event_folder_recommend_switch"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderContentInfo(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 9

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/android/statistics/a;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v1, v4, v6}, Lcom/android/statistics/a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "folder_content_item_info"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_app_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_shortcut_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "app_count_in_one_folder"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderCount(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsHotSeatApps(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/statistics/LauncherStatisticsHelper;->filterHotSeatItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_33

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_seat_apps"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsMaxFolderPages(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_max_page"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_convert"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statFolderClickEvent(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 7

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    if-eqz v1, :cond_f

    const-string v1, "1"

    goto :goto_11

    :cond_f
    const-string v1, "2"

    :goto_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v3}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_time"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/String;

    const-string v3, "folder_name"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "folder_type"

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "launcher_mode"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v0, "open_folder"

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statHasMustPlay()V
    .registers 4

    const-string v0, "has_must_play"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "user_has_must_play"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statMoveFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p4, :cond_31

    move-object p4, v1

    goto :goto_32

    :cond_31
    move-object p4, v2

    :goto_32
    const-string v3, "launcher_state"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p4

    if-eqz p4, :cond_3e

    move-object v1, v2

    :cond_3e
    const-string p4, "folder_size"

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "folder_move_screen_from"

    invoke-virtual {v0, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "folder_move_screen_to"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p3, Lcom/android/common/a;

    invoke-direct {p3, p2}, Lcom/android/common/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "folder_item"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo p2, "move_folder_page_edit_mode"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statOpenBFByClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_open_click"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenBFByLongClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_open_long_click"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenBigFolderByDifferentType(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string p2, "bigFolder_open_by_name_or_stack"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statOpenMustPlay()V
    .registers 4

    const-string/jumbo v0, "open_must_play"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "user_open_must_play"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statRemoveFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v1, "remove_folder"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statRenameByLongClick()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "folder_shortcut_to_rename"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bf_scroll_from"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bf_scroll_to"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_40

    const-string p1, "0"

    goto :goto_42

    :cond_40
    const-string p1, "1"

    :goto_42
    const-string/jumbo p2, "scroll_type"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string p2, "bigFolder_scroll"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statSomFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string/jumbo v0, "somFolder_convert"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statsClickDisbandFolder()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_click_disband_folder"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsFolderInfo()V
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v0}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v0}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherModel;->cloneBgDataModelInWorkHandler()Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/statistics/FolderStatisticsManager;->statsHotSeatApps(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/statistics/FolderStatisticsManager;->statsFolderCount(I)V

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/statistics/FolderStatisticsManager;->statsBigFolderInfo(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/statistics/FolderStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v3, v2

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/android/statistics/FolderStatisticsManager;->statsAllFolderBaseInfo(Ljava/util/ArrayList;I)V

    const/4 v0, 0x0

    move v2, v0

    move v4, v2

    :goto_43
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_68

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    div-int/2addr v6, v3

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v5, :cond_65

    move v2, v7

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_68
    if-eqz v2, :cond_6d

    invoke-direct {p0}, Lcom/android/statistics/FolderStatisticsManager;->statsFolderAppRecommendSwitch()V

    :cond_6d
    invoke-direct {p0, v4}, Lcom/android/statistics/FolderStatisticsManager;->statsMaxFolderPages(I)V

    return-void
.end method

.method public statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mCreateType:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_create_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/android/statistics/a;

    invoke-direct {v5, v3, v1, v4, v2}, Lcom/android/statistics/a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_app_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_shortcut_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_item_info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "generate_folder"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRecommendFolderOpenDynamic(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "event_folder_recommend_open"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRecommendFolderSettingsStates(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string/jumbo v1, "recommend_folder_settings_states"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "change_recommend_folder_settings"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRenameFolder(Ljava/lang/String;)V
    .registers 4

    const-string v0, "folder_name"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v0, "rename_folder"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsToggleModeGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_content_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroidx/core/location/a;

    invoke-direct {v2, v1}, Landroidx/core/location/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_content_item_info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/FolderStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v1, "toggle_mode_check_number_new_folder"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
