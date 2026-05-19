.class public Lcom/oplus/zoom/common/ZoomDCSManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;
    }
.end annotation


# static fields
.field private static final AFTER_SCALE:Ljava/lang/String; = "after_scale"

.field private static final BEFORE_SCALE:Ljava/lang/String; = "before_scale"

.field private static final CALL_PKG:Ljava/lang/String; = "call_pkg"

.field public static final CLOSE_BUTTON:Ljava/lang/String; = "button"

.field public static final CLOSE_DOUBLE_TAP_IN_SIMPLE_MODE:Ljava/lang/String; = "double_click"

.field public static final CLOSE_SIMPLE_MODE_BUTTON:Ljava/lang/String; = "simple_button"

.field private static final CLOSE_TYPE:Ljava/lang/String; = "close_type"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final EVENT_ID_PS_TRIGGER:Ljava/lang/String; = "ps_trigger"

.field private static final EXIT_MINI_ZOOM_WINDOW:Ljava/lang/String; = "exit_mini_zoom_window"

.field private static final EXIT_ZOOM_FLOAT_HANDLE:Ljava/lang/String; = "exit_zoom_float_handle"

.field private static final EXIT_ZOOM_WINDOW:Ljava/lang/String; = "exit_zoom_window"

.field private static final GAME_SHRINK_SWITCH:Ljava/lang/String; = "zoom_window_game_mode"

.field private static final KEY_SPLIT_COUNT:Ljava/lang/String; = "split_count"

.field private static final KEY_TRRIGER_ACTION:Ljava/lang/String; = "trigger_action"

.field public static final LAUNCHER_GESTURE:Ljava/lang/String; = "com.android.launcher.gesture"

.field private static final MSG_EXIT_FLOAT_HANDLE:I = 0x6

.field private static final MSG_EXIT_MINI:I = 0x4

.field private static final MSG_EXIT_ZOOM:I = 0x2

.field private static final MSG_SHOW_FLOAT_HANDLE:I = 0x5

.field private static final MSG_START_MINI:I = 0x3

.field private static final MSG_START_ZOOM:I = 0x1

.field private static final ON_DELETE_ZOOM_BUTTON_SELECTED:Ljava/lang/String; = "on_delete_zoom_button_selected"

.field private static final POCKET_STUDIO_TAG:Ljava/lang/String; = "20126006"

.field private static final RESIZE_WINDOW:Ljava/lang/String; = "resize_window"

.field private static final SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field private static final SHOW_ZOOM_FLOAT_HANDLE:Ljava/lang/String; = "show_zoom_float_handle"

.field private static final SIMPLE_MODE_SWITCH:Ljava/lang/String; = "simple_mode_switch"

.field private static final SIMPLE_SHARE_SWITCH:Ljava/lang/String; = "simple_share_switch"

.field private static final START_MINI_ZOOM_WINDOW:Ljava/lang/String; = "start_mini_zoom_window"

.field private static final START_TIME:Ljava/lang/String; = "start_time"

.field private static final START_ZOOM_WINDOW:Ljava/lang/String; = "start_zoom_window"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final STATUS_FALSE:Ljava/lang/String; = "false"

.field private static final STATUS_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "ZoomDCSManager"

.field public static final VALUE_ACTION_ZOOM_DRAG:Ljava/lang/String; = "zoom_drag"

.field public static final VALUE_SPLIT_COUNT_THREE:Ljava/lang/String; = "three"

.field public static final VALUE_SPLIT_COUNT_TWO:Ljava/lang/String; = "two"

.field private static final ZOOM_NEXT_PKG:Ljava/lang/String; = "zoom_next_pkg"

.field private static final ZOOM_PKG:Ljava/lang/String; = "zoom_pkg"

.field private static final ZOOM_WINDOW_APP_ID:Ljava/lang/String; = "20126"

.field private static final ZOOM_WINDOW_TAG:Ljava/lang/String; = "001"

.field private static volatile sInstance:Lcom/oplus/zoom/common/ZoomDCSManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOplusTrackManager:Lcom/oplus/OplusTrackManager;

.field private final mRecorders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/common/ZoomDCSManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager;->lambda$onZoomShareSwitch$2(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/common/ZoomDCSManager;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/ZoomDCSManager;->getFormatSimpleDate(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/zoom/common/ZoomDCSManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager;->lambda$onSimpleModeSwitch$0(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/common/ZoomDCSManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager;->lambda$onGameShrinkSwitch$1(Z)V

    return-void
.end method

.method private getFormatSimpleDate(J)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "formatDate = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomDCSManager"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/common/ZoomDCSManager;->sInstance:Lcom/oplus/zoom/common/ZoomDCSManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/common/ZoomDCSManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/common/ZoomDCSManager;->sInstance:Lcom/oplus/zoom/common/ZoomDCSManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-direct {v1}, Lcom/oplus/zoom/common/ZoomDCSManager;-><init>()V

    sput-object v1, Lcom/oplus/zoom/common/ZoomDCSManager;->sInstance:Lcom/oplus/zoom/common/ZoomDCSManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/zoom/common/ZoomDCSManager;->sInstance:Lcom/oplus/zoom/common/ZoomDCSManager;

    return-object v0
.end method

.method private initZoomTrack()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/oplus/OplusTrackManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/oplus/OplusTrackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mOplusTrackManager:Lcom/oplus/OplusTrackManager;

    new-instance v0, Lcom/oplus/zoom/ZoomTrack;

    invoke-direct {v0}, Lcom/oplus/zoom/ZoomTrack;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->updateTrackEvent()V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mOplusTrackManager:Lcom/oplus/OplusTrackManager;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;

    invoke-virtual {v0, p0}, Lcom/oplus/OplusTrackManager;->addTrackListener(Lcom/oplus/OplusTrackManager$TrackListener;)V

    return-void
.end method

.method private synthetic lambda$onGameShrinkSwitch$1(Z)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "true"

    goto :goto_c

    :cond_a
    const-string p1, "false"

    :goto_c
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;

    const-string p1, "20126"

    const-string v1, "001"

    const-string v2, "zoom_window_game_mode"

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/oplus/OplusTrackManager$TrackListener;->setTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onGameShrinkSwitch: evenMap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSimpleModeSwitch$0(Z)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "true"

    goto :goto_c

    :cond_a
    const-string p1, "false"

    :goto_c
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;

    const-string p1, "20126"

    const-string v1, "001"

    const-string v2, "simple_mode_switch"

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/oplus/OplusTrackManager$TrackListener;->setTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimpleModeSwitch: evenMap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onZoomShareSwitch$2(Z)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "true"

    goto :goto_c

    :cond_a
    const-string p1, "false"

    :goto_c
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mTrackListener:Lcom/oplus/OplusTrackManager$TrackListener;

    const-string p1, "20126"

    const-string v1, "001"

    const-string v2, "simple_share_switch"

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/oplus/OplusTrackManager$TrackListener;->setTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onZoomShareSwitch: evenMap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPocketStudioTrigger(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "trigger_action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "split_count"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onPocketStudioTrigger(), eventID: ps_triggerlogMap: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    const-string p1, "20126"

    const-string v1, "20126006"

    const-string v2, "ps_trigger"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method private updateTrackEvent()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setting_zoom_simple_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_e} :catch_3a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    :try_start_14
    iget-object v4, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setting_zoomwindow_game_shrink"

    invoke-static {v4, v5, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_20} :catch_37

    if-ne v4, v2, :cond_24

    move v4, v2

    goto :goto_25

    :cond_24
    move v4, v0

    :goto_25
    :try_start_25
    iget-object v5, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "setting_zoomwindow_open_from_share"

    invoke-static {v5, v6, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_31} :catch_35

    if-ne v3, v2, :cond_53

    move v0, v2

    goto :goto_53

    :catch_35
    move-exception v2

    goto :goto_3d

    :catch_37
    move-exception v2

    move v4, v0

    goto :goto_3d

    :catch_3a
    move-exception v2

    move v1, v0

    move v4, v1

    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackEvent error, e: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZoomDCSManager"

    invoke-static {v3, v2}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    invoke-virtual {p0, v1}, Lcom/oplus/zoom/common/ZoomDCSManager;->onSimpleModeSwitch(Z)V

    invoke-virtual {p0, v4}, Lcom/oplus/zoom/common/ZoomDCSManager;->onGameShrinkSwitch(Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onZoomShareSwitch(Z)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ZoomDCSManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->initZoomTrack()V

    return-void
.end method

.method public onExitMiniZoomWindow(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onExitMiniZoomWindow()V

    :cond_d
    return-void
.end method

.method public onExitZoomFloatHandle(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onExitZoomFloatHandle()V

    :cond_d
    return-void
.end method

.method public onExitZoomWindow(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onExitZoomWindow()V

    :cond_d
    return-void
.end method

.method public onGameShrinkSwitch(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/zoom/common/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/zoom/common/a;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSimpleModeSwitch(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/zoom/common/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/zoom/common/a;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartMiniZoomWindow(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onStartMiniZoomWindow()V

    :cond_d
    return-void
.end method

.method public onStartZoomFloatHandle(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onStartZoomFloatHandle()V

    :cond_d
    return-void
.end method

.method public onStartZoomWindow(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onStartZoomWindow()V

    :cond_d
    return-void
.end method

.method public onUserSwitch(I)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->updateTrackEvent()V

    return-void
.end method

.method public onZoomCloseWithType(ILjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onZoomCloseWithType(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onZoomEnter(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onZoomEnter taskid = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomExit(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onZoomExit taskid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDCSManager"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleChange(IFF)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mRecorders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2, p3}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->onZoomScaleChange(FF)V

    :cond_d
    return-void
.end method

.method public onZoomShareSwitch(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/zoom/common/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/zoom/common/a;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
