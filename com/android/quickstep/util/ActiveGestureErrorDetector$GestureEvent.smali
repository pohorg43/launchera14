.class public final enum Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/ActiveGestureErrorDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum LAUNCHER_DESTROYED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;


# instance fields
.field public final mLogEvent:Z

.field public final mTrackEvent:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "MOTION_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v3, "MOTION_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v5, "SET_END_TARGET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v5, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v7, "SET_END_TARGET_HOME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v7, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v9, "SET_END_TARGET_NEW_TASK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v9, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v11, "ON_SETTLED_ON_END_TARGET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v11, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v13, "START_RECENTS_ANIMATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v13, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v15, "FINISH_RECENTS_ANIMATION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v15, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v14, "CANCEL_RECENTS_ANIMATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v14, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v12, "SET_ON_PAGE_TRANSITION_END_CALLBACK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v12, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v10, "CANCEL_CURRENT_ANIMATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v10, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v8, "CLEANUP_SCREENSHOT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "SCROLLER_ANIMATION_ABORTED"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "TASK_APPEARED"

    const/16 v4, 0xd

    invoke-direct {v6, v2, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v4, "EXPECTING_TASK_APPEARED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v2, v4, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v4, v6, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "LAUNCHER_DESTROYED"

    move-object/from16 v19, v4

    const/16 v4, 0x10

    invoke-direct {v6, v2, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->LAUNCHER_DESTROYED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v4, "STATE_GESTURE_STARTED"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v2, v4, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "STATE_GESTURE_COMPLETED"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v4, v6, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "STATE_GESTURE_CANCELLED"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    invoke-direct {v6, v2, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v4, "STATE_END_TARGET_ANIMATION_FINISHED"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v2, v4, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "STATE_RECENTS_SCROLLING_FINISHED"

    move-object/from16 v24, v2

    const/16 v2, 0x15

    invoke-direct {v4, v6, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "STATE_CAPTURE_SCREENSHOT"

    move-object/from16 v25, v4

    const/16 v4, 0x16

    invoke-direct {v6, v2, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v4, "STATE_SCREENSHOT_CAPTURED"

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "STATE_HANDLER_INVALIDATED"

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "STATE_RECENTS_ANIMATION_CANCELED"

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v6, "STATE_LAUNCHER_DRAWN"

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    move-object/from16 v30, v8

    move-object/from16 v16, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-direct {v4, v6, v2, v8, v10}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    aput-object v0, v2, v10

    aput-object v1, v2, v8

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v30, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->$VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->mLogEvent:Z

    iput-boolean p4, p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->mTrackEvent:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .registers 2

    const-class v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .registers 1

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->$VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0}, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object v0
.end method
