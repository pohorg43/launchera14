.class public Lcom/android/launcher3/card/groupcard/GroupCardView;
.super Lcom/android/launcher3/card/LauncherCardView;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/IGroupCardCallback;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/card/LauncherCardView;",
        "Lpantanal/app/groupcard/IGroupCardCallback;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGroupCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1263:1\n314#2,11:1264\n31#3:1275\n94#3,14:1276\n1#4:1290\n13424#5,3:1291\n1855#6,2:1294\n1549#6:1296\n1620#6,3:1297\n*S KotlinDebug\n*F\n+ 1 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView\n*L\n387#1:1264,11\n434#1:1275\n434#1:1276,14\n601#1:1291,3\n832#1:1294,2\n846#1:1296\n846#1:1297,3\n*E\n"
    }
.end annotation


# static fields
.field private static final AVOID_ANIM_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BG_ANIM_IN_DURATION:J = 0xfaL

.field private static final BG_ANIM_OUT_DURATION:J = 0x226L

.field private static final CARD_DRAG_MASK_OUT_DURATION:J = 0x29bL

.field private static final CARD_MASK_IN_DURATION:J = 0x226L

.field private static final CARD_MASK_OUT_DURATION:J = 0x258L

.field public static final Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

.field private static final RADIUS_NUM:I = 0x8

.field private static final SHOW_BG_DELAY_AFTER_BINDING:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "GroupCardView"

.field private static final VERIFY_TIMING:J = 0x3e8L

.field private static attachedInstance:Lcom/android/launcher3/card/groupcard/GroupCardView;

.field private static final onCardListChangeCb:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;


# instance fields
.field private cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

.field private childCardRadiusArr:[F

.field private childView:Landroid/view/View;

.field private coreAnimatorList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private dragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;"
        }
    .end annotation
.end field

.field private isBgFadeIn:Z

.field private longPressObserver:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBgWidth:I

.field private final mCardBoundsMarginForShortCut:I

.field private mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

.field private final mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

.field private mGroupCardDisplayState:Lpantanal/app/groupcard/GroupCardDisplayState;

.field private mInitLoad:Z

.field private mIsInDragMode:Z

.field private mLocation:Lpantanal/app/groupcard/popup/PopupLocation;

.field private final mMaxBgWidth:I

.field private final mPaddingCache:Landroid/graphics/Rect;

.field private final mResetDrawPicFlagForCache:Ljava/lang/Runnable;

.field private shouldPlayCardAnimator:Z

.field private smartView:Landroid/view/View;

.field private unsubscribedMark:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->onCardListChangeCb:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;

    const/16 v0, 0x17

    new-array v0, v0, [Lh4/j;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v2, 0xf4241

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4242

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4243

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4244

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4245

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4246

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4247

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4248

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4249

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DISMISS_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_CLEAR_BUTTON_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf424f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4250

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4251

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4252

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4253

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4254

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4255

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_ASSISTANT:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4256

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS_PANEL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const v3, 0xf4257

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->AVOID_ANIM_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mMaxBgWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070279

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardBoundsMarginForShortCut:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    new-instance p1, Landroidx/core/widget/a;

    invoke-direct {p1, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mMaxBgWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070279

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardBoundsMarginForShortCut:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    new-instance p1, Landroidx/appcompat/widget/g;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mMaxBgWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070279

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardBoundsMarginForShortCut:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mMaxBgWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070279

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardBoundsMarginForShortCut:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$awaitRefreshAnimOnLongPressEnd(Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->awaitRefreshAnimOnLongPressEnd(Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$delayWhenFloatingElementShowing(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/groupcard/GroupCardView;->delayWhenFloatingElementShowing(Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAttachedInstance$cp()Lcom/android/launcher3/card/groupcard/GroupCardView;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->attachedInstance:Lcom/android/launcher3/card/groupcard/GroupCardView;

    return-object v0
.end method

.method public static final synthetic access$getCardModelWrapper$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public static final synthetic access$getDefaultCard$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/DefaultCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-object p0
.end method

.method public static final synthetic access$getLongPressObserver$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMCardNameHelper$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/utils/CardNameHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    return-object p0
.end method

.method public static final synthetic access$getMSwitchStateDrawParam$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    return-object p0
.end method

.method public static final synthetic access$getOnCardListChangeCb$cp()Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->onCardListChangeCb:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;

    return-object v0
.end method

.method public static final synthetic access$getSmartCardAnimDuration(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getSmartCardAnimDuration(Landroid/view/View;Landroid/view/View;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSmartView$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$playSwitchStateAnimIfNeeded(Lcom/android/launcher3/card/groupcard/GroupCardView;ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSwitchStateAnimIfNeeded(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static final synthetic access$setAttachedInstance$cp(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->attachedInstance:Lcom/android/launcher3/card/groupcard/GroupCardView;

    return-void
.end method

.method public static final synthetic access$setDefaultCard$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/card/DefaultCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-void
.end method

.method public static final synthetic access$setMInitLoad$p(Lcom/android/launcher3/card/groupcard/GroupCardView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mInitLoad:Z

    return-void
.end method

.method private final adjustOnMeasure(II)V
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-interface {p0, v2, v1, p1, v0}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mMaxBgWidth:I

    if-ge v1, v2, :cond_24

    move v2, v1

    :cond_24
    iput v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mBgWidth:I

    sub-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/DefaultCardView;->setCustomMeasuredDimension(II)V

    :cond_55
    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p1

    if-eqz p1, :cond_60

    iget p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mBgWidth:I

    invoke-interface {p1, p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setMargin(I)V

    :cond_60
    return-void
.end method

.method private final awaitRefreshAnimOnLongPressEnd(Ll4/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;

    iget v1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V

    :goto_18
    iget-object p1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p0, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_9d

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "GroupCardView"

    const-string p1, "awaitRefreshAnimOnLongPressEnd: no need wait"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_58
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    new-instance v2, Lm7/n;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v2}, Lm7/n;->w()V

    new-instance v3, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;-><init>(Lm7/l;)V

    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v4

    if-eqz v4, :cond_85

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getLongPressObserver$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_85
    new-instance v4, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroidx/lifecycle/Observer;)V

    invoke-interface {v2, v4}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_98

    const-string v3, "frame"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_98
    if-ne v2, v1, :cond_9b

    return-object v1

    :cond_9b
    move-object v0, p0

    move-object p0, p1

    :goto_9d
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_a8

    iget-object p1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_a8
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method private final delayWhenFloatingElementShowing(Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Landroid/view/View;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    const/4 v2, -0x1

    if-ge v2, v0, :cond_40

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/views/ListenerView;

    if-eqz v2, :cond_3d

    const-string v2, "GroupCardView"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "playSmartCardAnimator: but ListenerView is showing."

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.views.ListenerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ListenerView;

    new-instance v0, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/ListenerView;->addCustomCloseListener(Ljava/lang/Runnable;)V

    return v1

    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method private static final delayWhenFloatingElementShowing$lambda$13(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;
    .registers 2

    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/launcher3/card/DefaultCardView;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method private final getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p0

    instance-of v0, p0, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    check-cast p0, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    goto :goto_13

    :cond_12
    move-object p0, v1

    :goto_13
    if-nez p0, :cond_2d

    const-string p0, "exception: getGroupCard return null, "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GroupCardView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_2d
    move-object v1, p0

    :goto_2e
    return-object v1
.end method

.method private final getSmartCardAnimDuration(Landroid/view/View;Landroid/view/View;)Ljava/lang/Long;
    .registers 3

    instance-of p1, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-nez p1, :cond_f

    instance-of p1, p2, Lcom/android/launcher3/card/DefaultCardView;

    if-nez p1, :cond_f

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getSmartViewAnimDuration()Ljava/lang/Long;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSwitchStateAnimIfNeeded$lambda$12$lambda$9(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic initGroupCardInfo$default(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/List;Lcom/android/launcher3/card/groupcard/GroupCardCallback;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/card/groupcard/GroupCardView;->initGroupCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/List;Lcom/android/launcher3/card/groupcard/GroupCardCallback;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initGroupCardInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isNeedAppearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_1f

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-nez p0, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public static synthetic j(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onAttachedToWindow$lambda$29$lambda$28(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->delayWhenFloatingElementShowing$lambda$13(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->showLoadingIfNeed$lambda$3()V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSmartCardAnimator$lambda$4(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method private static final mResetDrawPicFlagForCache$lambda$0(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mResetDrawPicFlagForCache run "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "GroupCardView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setDrawPicForDrag(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->cacheCardElement()V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lpantanal/app/groupcard/plugininterface/IGroupCard;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onLauncherAnimStateChange$lambda$44$lambda$43(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lpantanal/app/groupcard/plugininterface/IGroupCard;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache$lambda$0(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method public static final onAnyCardAttachToWindow(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->onAnyCardAttachToWindow(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$29$lambda$28(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->applySwitchState(ZIZ)V

    :cond_18
    return-void
.end method

.method private static final onLauncherAnimStateChange$lambda$44$lambda$43(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lpantanal/app/groupcard/plugininterface/IGroupCard;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLauncherAnimStateChange: remove timeout anim type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", coreAnimatorList: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GroupCardView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string/jumbo p0, "onLauncherAnimStateChange: after remove timeout anim setRefreshable: true"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setRefreshable(Z)V

    :cond_4b
    return-void
.end method

.method private final playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p1, "GroupCardView"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Card"

    const-string/jumbo v0, "playSmartCardAnimator: no need anim for newView = oldView"

    invoke-static {p2, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/card/groupcard/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/groupcard/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_37

    new-instance v1, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenStarted(Lkotlin/jvm/functions/Function2;)Lm7/s1;

    :cond_37
    return-void
.end method

.method private static final playSmartCardAnimator$lambda$4(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final playSwitchStateAnimIfNeeded(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_48

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "alphaAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    goto :goto_38

    :cond_37
    move-object p2, p0

    :goto_38
    instance-of v0, p2, Landroid/animation/Animator;

    if-eqz v0, :cond_3f

    move-object p0, p2

    check-cast p0, Landroid/animation/Animator;

    :cond_3f
    if-eqz p0, :cond_44

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_44
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_47
    return-void

    :array_48
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final playSwitchStateAnimIfNeeded$lambda$12$lambda$9(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final resumeCard(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->shouldShowCard()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->resumeCard(ZZ)V

    :cond_a
    return-void
.end method

.method private static final setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->access$setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method private static final showLoadingIfNeed$lambda$3()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final animBg(Z)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBg  animIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v3, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    if-eqz p1, :cond_1f

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->IN:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    goto :goto_21

    :cond_1f
    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->OUT:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    :goto_21
    move-object v4, v1

    if-eqz p1, :cond_27

    const-wide/16 v1, 0xfa

    goto :goto_29

    :cond_27
    const-wide/16 v1, 0x226

    :goto_29
    move-wide v5, v1

    new-instance v7, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v7}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v1, v0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V

    :cond_3c
    iput-boolean p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->isBgFadeIn:Z

    return-void
.end method

.method public final animCardAlpha(ZZ)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animCardAlpha  maskDisappear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dragStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_35

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    return-void

    :cond_35
    if-nez p1, :cond_3b

    const-wide/16 v0, 0x226

    :goto_39
    move-wide v5, v0

    goto :goto_43

    :cond_3b
    if-eqz p2, :cond_40

    const-wide/16 v0, 0x29b

    goto :goto_39

    :cond_40
    const-wide/16 v0, 0x258

    goto :goto_39

    :goto_43
    new-instance p2, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v3, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->MASK:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    if-nez p1, :cond_4c

    sget-object p1, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->IN:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    goto :goto_4e

    :cond_4c
    sget-object p1, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->OUT:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    :goto_4e
    move-object v4, p1

    new-instance v7, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v7}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-interface {p0, p2}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V

    :cond_61
    return-void
.end method

.method public applySwitchState(ZIZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;->applySwitchState(ZIZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_20

    iget-boolean p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mIsInDragMode:Z

    if-nez p3, :cond_20

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p3

    if-nez p3, :cond_1d

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_20

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    :cond_20
    return-void
.end method

.method public cacheCardElement()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->getChildCardDataInfo(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cacheGroupCardDataInfo(Ljava/util/List;)V

    :cond_12
    return-void
.end method

.method public clearCardCachedElement()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cacheGroupCardDataInfo(Ljava/util/List;)V

    return-void
.end method

.method public final destroyAndRelease()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyAndRelease:this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unSubscribed()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardView;->hasReleased:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->clearCardCachedElement()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->unsubscribedMark:Z

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-static {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->access$setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getDrawTitleFlgWhenDrag()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1e

    :cond_19
    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childView:Landroid/view/View;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    instance-of v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v2, :cond_22

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    :cond_22
    if-eqz v1, :cond_27

    invoke-virtual {v1, p1}, Lcom/android/launcher3/card/LauncherCardInfo;->downTouch(Landroid/view/MotionEvent;)V

    :cond_27
    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableCacheView(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 10

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ae

    if-nez p2, :cond_12

    goto/16 :goto_ae

    :cond_12
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "GroupCardView"

    if-eqz v0, :cond_1f

    const-string v0, "enableCacheView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v3

    if-eqz v3, :cond_9c

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_40

    :cond_3f
    move-object p1, v4

    :goto_40
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4d

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    :cond_4d
    if-eqz v4, :cond_52

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_52
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_6f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add cacheView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setSmartView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setDrawPicForDrag(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableCacheView: category:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  info: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    if-nez p2, :cond_ad

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->showMultiLandHoldView()Z

    move-result p1

    if-nez p1, :cond_ad

    iget-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->isShowDefaultView:Z

    if-eqz p1, :cond_ad

    iput-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->shouldPlayCardAnimator:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->showLoadingIfNeed()V

    :cond_ad
    return-void

    :cond_ae
    :goto_ae
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->showMultiLandHoldView()Z

    move-result p1

    if-nez p1, :cond_bd

    iget-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->isShowDefaultView:Z

    if-eqz p1, :cond_bd

    iput-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->shouldPlayCardAnimator:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->showLoadingIfNeed()V

    :cond_bd
    return-void
.end method

.method public endDrag()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->endDrag()V

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->checkRejectAlarm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mIsInDragMode:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public executeCardDestroy(Z)V
    .registers 4

    const-string v0, "executeCardDestroy -- dragToAssistant: "

    const-string v1, "GroupCardView"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    :cond_17
    return-void
.end method

.method public bridge synthetic executeCardOnDragEnd(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->executeCardOnDragEnd(Z)V

    return-void
.end method

.method public executeCardOnDragEnd(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->onDragEnd(Ljava/lang/Boolean;)V

    return-void
.end method

.method public executeCardOnDragStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->onDragStart()V

    return-void
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public final getCardBoundsForPopupShortCut(Landroid/graphics/Rect;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "outPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "popUpContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :cond_20
    const-string/jumbo v0, "mLocation:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mLocation:Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr p3, v2

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    goto :goto_5c

    :cond_51
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    :goto_5c
    invoke-virtual {p2, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mLocation:Lpantanal/app/groupcard/popup/PopupLocation;

    if-eqz p2, :cond_fd

    sget-object v2, Lpantanal/app/groupcard/popup/PopupLocation;->LEFT:Lpantanal/app/groupcard/popup/PopupLocation;

    const/4 v3, 0x0

    if-ne p2, v2, :cond_80

    invoke-virtual {v0, p3, v3}, Landroid/graphics/Rect;->offset(II)V

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mBgWidth:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    add-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :cond_80
    sget-object v2, Lpantanal/app/groupcard/popup/PopupLocation;->RIGHT:Lpantanal/app/groupcard/popup/PopupLocation;

    if-ne p2, v2, :cond_98

    neg-int p2, p3

    invoke-virtual {v0, p2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_98
    :goto_98
    const-string/jumbo p2, "paddingBottom:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " paddingTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " paddingLeft:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " paddingRight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mPaddingCache:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mBgWidth:I

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardBoundsMarginForShortCut:I

    sub-int/2addr p3, p0

    add-int/2addr p3, v2

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "outPos:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    return-void
.end method

.method public getCardName()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    return-object p0
.end method

.method public final getCellLayoutParent()Lcom/android/launcher3/CellLayout;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v1

    :goto_15
    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1c

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/CellLayout;

    :cond_1c
    return-object v1
.end method

.method public final getChildCardRadiusArr()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    return-object p0
.end method

.method public final getChildView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childView:Landroid/view/View;

    return-object p0
.end method

.method public final getDragView()Lcom/android/launcher3/dragndrop/DragView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p0
.end method

.method public final getLongPressObserver()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->longPressObserver:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getMDragListener()Lcom/android/launcher3/card/utils/DragListenerHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    return-object p0
.end method

.method public final getMResetDrawPicFlagForCache()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getPoupItems()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;"
        }
    .end annotation

    const-string v0, "GroupCardView"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lpantanal/app/groupcard/popup/IPopupPartner;->getPopupItems()Lpantanal/app/groupcard/popup/Popup;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/Popup;->getLocation()Lpantanal/app/groupcard/popup/PopupLocation;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    iput-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mLocation:Lpantanal/app/groupcard/popup/PopupLocation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPoupItems mLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mLocation:Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_35
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3c

    goto :goto_41

    :cond_3c
    const-string v2, "Failed call getPoupItems"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-interface {p0}, Lpantanal/app/groupcard/popup/IPopupPartner;->getPopupItems()Lpantanal/app/groupcard/popup/Popup;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lpantanal/app/groupcard/popup/Popup;->getItems()Ljava/util/List;

    move-result-object v1

    :cond_51
    return-object v1
.end method

.method public getRadiusArr()[F
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    return-object p0
.end method

.method public getUiDataForDrag()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_37

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->getChildCardDataInfo(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    new-instance v2, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-virtual {v1}, Lpantanal/app/groupcard/GroupChildCardDataInfo;->getCardIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lpantanal/app/groupcard/GroupChildCardDataInfo;->getUiData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    const-string v1, ""

    :cond_30
    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_37
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUiDataForDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getViewScreenshot(ZZ)Landroid/graphics/Bitmap;
    .registers 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_6f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-gtz p1, :cond_15

    goto :goto_6f

    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getRadiusArr()[F

    move-result-object v0

    :cond_2e
    const/4 p2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_33
    if-ge p2, v2, :cond_6e

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6b

    invoke-static {v3}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_42

    goto :goto_6b

    :cond_42
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v6, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v4, v0}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    invoke-static {v4}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_6b
    :goto_6b
    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    :cond_6e
    return-object p1

    :cond_6f
    :goto_6f
    const-string p0, "GroupCardView"

    const-string p1, "getViewScreenshot, bitmap width and height must be > 0"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    const/4 p0, 0x4

    :goto_c
    return p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleGetViewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_19

    const-string/jumbo v1, "success"

    goto :goto_1d

    :cond_19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smartView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_40

    :cond_3f
    move-object v2, v1

    :goto_40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GroupCardView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v3

    const-string v4, "it.dragController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v3

    if-nez v3, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "handleGetViewCallback: isDragging, handle later. return"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_94
    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setContent(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setLoadCode(I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a1
    if-eqz p1, :cond_15c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "handleGetViewCallback:smartView:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",defaultCard:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    if-nez p2, :cond_d0

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    :cond_d0
    if-nez p2, :cond_d3

    move-object p2, v1

    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "handleGetViewCallback: oldView:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newView:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", view.parent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " this:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_11f

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_11f
    if-eqz v1, :cond_124

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleGetViewCallback: addView:view："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_153
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setSmartView(Landroid/view/View;)V

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_15c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hasSmartView()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public initCardAfterInflate()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->initCardAfterInflate()V

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/card/utils/CardNameHelper;->initCardName(Lcom/android/launcher3/OplusBubbleTextView;Lcom/android/launcher3/Launcher;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->showLoadingIfNeed()V

    return-void
.end method

.method public final initGroupCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/List;Lcom/android/launcher3/card/groupcard/GroupCardCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;",
            "Lcom/android/launcher3/card/groupcard/GroupCardCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_f

    const-string p0, "GroupCardView"

    const-string p1, "initGroupCardInfo callBack == null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v9, Lpantanal/app/groupcard/GroupCardConfig;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070023

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lpantanal/app/groupcard/GroupCardConfig;-><init>(IFFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->setInnerCallback(Lpantanal/app/groupcard/IGroupCardCallback;)V

    new-instance p0, Lpantanal/app/groupcard/GroupCardInfo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/card/pantanal/application/ConverterKt;->toCardViewInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardFilter;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;->getSInstance()Lcom/android/launcher3/card/groupcard/GroupCardFilter;

    move-result-object v4

    move-object v0, p0

    move-object v2, v9

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/app/groupcard/GroupCardInfo;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)V

    iput-object p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    return-void
.end method

.method public final isContentEmpty()Z
    .registers 4

    const-string v0, "isContentEmpty:mGroupCardDisplayState:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mGroupCardDisplayState:Lpantanal/app/groupcard/GroupCardDisplayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInitLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mInitLoad:Z

    const-string v2, "GroupCardView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mInitLoad:Z

    if-nez v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mGroupCardDisplayState:Lpantanal/app/groupcard/GroupCardDisplayState;

    if-eqz p0, :cond_23

    sget-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NOT_EMPTY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    if-eq p0, v0, :cond_25

    :cond_23
    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public isGroupCard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isShowCardName()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isShownOnCurrentPage()Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string/jumbo v3, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-ne p0, v2, :cond_39

    move v1, v2

    :cond_39
    return v1
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p0, "card model is null."

    return-object p0

    :cond_b
    sget-object v0, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public markKeepResumedStateOnDetach()V
    .registers 2

    const-string p0, "GroupCardView"

    const-string/jumbo v0, "markKeepResumedStateOnDetach"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markUnsubscribedOnDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->unsubscribedMark:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->access$setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttachedToWindow:this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_45
    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getCachedGroupCardDataInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-interface {v0}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_68

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_68
    return-void
.end method

.method public onChildStateChanged(Lpantanal/app/groupcard/CardIdentity;Lpantanal/app/groupcard/GroupChildCardState;)V
    .registers 3

    const-string p0, "cardIdentity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "GroupCardView"

    const-string/jumbo p1, "onChildStateChanged"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    const-string p1, "GroupCardView"

    const-string/jumbo v0, "onDestroy"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->clearCardCachedElement()V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->unSubscribed()V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->hasReleased:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->hasDetached:Z

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/utils/DragListenerHelper;->getContent()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setContent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setLoadCode(I)V

    :cond_44
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_58
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 8

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardView;->hasDetached:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v0

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->cacheCardElement()V

    :cond_1b
    iget-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->unsubscribedMark:Z

    const-string v3, " this:"

    const/4 v4, 0x0

    const-string v5, "GroupCardView"

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    if-nez v1, :cond_4e

    const-string/jumbo v1, "onDetachedFromWindow -- unsubscribedMark:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->unsubscribedMark:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->destroyAndRelease()V

    goto :goto_7e

    :cond_4e
    sget-object v1, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-static {v1, v4}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->access$setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDetachedFromWindow -- ignore to release because of unsubscribedMark: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->unsubscribedMark:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", itemInfo.mDragToAssistant: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7e
    const-string/jumbo v1, "onDetachedFromWindow mLauncher?.isDestroyed:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v0, v2

    :goto_ab
    if-eqz v0, :cond_c7

    const-string/jumbo v0, "onDetachedFromWindow"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_c7
    return-void
.end method

.method public onDisplayStateChanged(Lpantanal/app/groupcard/GroupCardDisplayState;)V
    .registers 4

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayStateChanged:state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mGroupCardDisplayState:Lpantanal/app/groupcard/GroupCardDisplayState;

    return-void
.end method

.method public onGroupCardModeChanged(Z)V
    .registers 3

    const-string/jumbo p0, "onGroupCardModeChanged: "

    const-string v0, "GroupCardView"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onGroupCardViewInAnimation(Z)V
    .registers 3

    const-string/jumbo p0, "onGroupCardViewInAnimation: "

    const-string v0, "GroupCardView"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onIconChanged()Landroid/view/View;
    .registers 3

    const-string v0, "GroupCardView"

    const-string/jumbo v1, "onIconChanged"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onLauncherAnimStateChange(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Z)V
    .registers 10

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v0

    if-eqz v0, :cond_109

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v1

    sget-object v2, Lcom/android/launcher3/card/groupcard/GroupCardView;->AVOID_ANIM_TYPES:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    const-string/jumbo v4, "onLauncherAnimStateChange: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isCoreAnim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isDisableInterrupt: "

    const-string v6, ", animRunning:"

    invoke-static {v4, v3, v5, v1, v6}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v3, "GroupCardView"

    invoke-static {v4, p2, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p2, :cond_4f

    if-eqz v1, :cond_4f

    const-string/jumbo p2, "onLauncherAnimStateChange:disableInterrupt"

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4f
    const-string v1, ", coreAnimatorList: "

    if-eqz p2, :cond_ae

    iget-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_65

    const-string/jumbo p2, "onLauncherAnimStateChange:setRefreshable: false"

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setRefreshable(Z)V

    :cond_65
    iget-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLauncherAnimStateChange add type: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p1, p2, :cond_109

    sget-object p2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS_PANEL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p1, p2, :cond_109

    sget-object p2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p1, p2, :cond_109

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lpantanal/app/groupcard/plugininterface/IGroupCard;)V

    invoke-static {v2, p1}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p2, v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    goto :goto_109

    :cond_ae
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLauncherAnimStateChange  remove type: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v2, p1}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {v2, p1}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f7
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->coreAnimatorList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_109

    const-string/jumbo p0, "onLauncherAnimStateChange:setRefreshable: true"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setRefreshable(Z)V

    :cond_109
    :goto_109
    return-void
.end method

.method public onLoadFinished(Z)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;ZLl4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public onLoadStart()V
    .registers 2

    const-string p0, "GroupCardView"

    const-string/jumbo v0, "onLoadStart"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->adjustOnMeasure(II)V

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/utils/CardNameHelper;->measureGroupCardName(Lcom/android/launcher3/Launcher;)V

    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->pauseCard()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->resumeCard(Z)V

    return-void
.end method

.method public onStartActivity(Landroid/view/View;[FLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[F",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "radius"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intentList"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "GroupCardView"

    const-string/jumbo p1, "onStartActivity"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_21

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->resumeCard(Z)V

    :cond_21
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-nez p1, :cond_35

    iget-boolean p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->isBgFadeIn:Z

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    :cond_35
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isNeedAppearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    :cond_10
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onTargetViewChanged(Landroid/view/View;[FLandroid/view/MotionEvent;)V
    .registers 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "radius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "GroupCardView"

    const-string/jumbo v0, "onTargetViewChanged"

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v1, v0, :cond_43

    aget v3, p2, v1

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTargetViewChanged: radius = index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1c

    :cond_43
    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childView:Landroid/view/View;

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo p0, "title"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTitleChanged: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupCardView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pauseCard()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryPauseCard: caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    return-void
.end method

.method public refreshForPermissionChanged(ZZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshForPermissionChanged hasPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needReCreate:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GroupCardView"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->tryRegroup()V

    :cond_44
    return-void
.end method

.method public final resetPressAnimStateForLongClick()V
    .registers 2

    const-string p0, "GroupCardView"

    const-string/jumbo v0, "resetPressAnimStateForLongClick"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    const-string v0, "GroupCardView"

    if-eqz p2, :cond_29

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryResumeCard: caller: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_36

    const-string/jumbo p0, "resumeCard but is land scape , no need fresh."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->resume(Z)Z

    return-void
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 4

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez v0, :cond_25

    :cond_f
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->create()V

    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget-object v2, Lm7/y0;->b:Lm7/f0;

    new-instance v4, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_1a
    return-void
.end method

.method public setCardNameAndUpdateDb(Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "GroupCardView"

    if-nez v0, :cond_e

    const-string p0, "cardInfo is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v3

    :goto_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCardNameAndUpdateDb oldTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_55
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    if-eqz v4, :cond_70

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v5, Lr7/v;->a:Lm7/b2;

    new-instance v7, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardNameAndUpdateDb$1;

    invoke-direct {v7, p0, p1, v3}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardNameAndUpdateDb$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Ljava/lang/String;Ll4/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_70
    return-void
.end method

.method public final setChildCardJumpAction(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setChildCardJumpAction(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public final setChildCardRadiusArr([F)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childCardRadiusArr:[F

    return-void
.end method

.method public final setChildView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->childView:Landroid/view/View;

    return-void
.end method

.method public final setCurrentLocation(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setCurrentLocation(I)V

    :cond_9
    return-void
.end method

.method public final setDragView(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method

.method public setDrawPicForDrag(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setDrawPicForDrag(Z)V

    :cond_9
    return-void
.end method

.method public setPreviewUiData(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreviewUiData: s.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardView$setPreviewUiData$listType$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$setPreviewUiData$listType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    :try_start_2a
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    new-instance v5, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->getCardIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->getUiData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lpantanal/app/groupcard/GroupChildCardDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_64
    invoke-static {v3}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_87

    invoke-interface {p0, v0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setChildCardDataInfo(Ljava/util/List;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    goto :goto_87

    :cond_74
    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_87

    sget-object v0, Li4/y;->a:Li4/y;

    invoke-interface {p0, v0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->setChildCardDataInfo(Ljava/util/List;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :cond_87
    :goto_87
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8e

    goto :goto_ab

    :cond_8e
    const-string/jumbo v0, "setPreviewUiData, s.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ab
    return-void
.end method

.method public setSmartView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    return-void
.end method

.method public setTextVisible(Z)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/FontManager;

    iget p1, p1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-nez p1, :cond_19

    move p1, v0

    goto :goto_1a

    :cond_19
    move p1, v1

    :goto_1a
    if-nez p1, :cond_23

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    :cond_2f
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    if-nez p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setTextVisible(Z)V

    if-nez p1, :cond_16

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public shouldShowCard()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, p0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    goto :goto_24

    :cond_23
    move p0, v1

    :goto_24
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "resumeCard but card is NOT at this page, atPage = "

    const-string v2, ", currentPage = "

    invoke-static {v0, p0, v2, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "GroupCardView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public showLoadingIfNeed()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v1

    const-string v2, "GroupCardView"

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getCachedGroupCardDataInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo p0, "showLoadingIfNeed FoldDeviceCardRecorder is enable cache"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const-string/jumbo v0, "showLoadingIfNeed: smartView="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isContentEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->smartView:Landroid/view/View;

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez v0, :cond_b9

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string/jumbo v0, "showLoadingIfNeed: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fc

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.card.DefaultCardView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/card/DefaultCardView;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/launcher3/card/LauncherCardUtil;->clipCardView(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/launcher3/card/groupcard/b;->b:Lcom/android/launcher3/card/groupcard/b;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoadingIfNeed:defaultCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " this:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    iget-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->shouldPlayCardAnimator:Z

    if-nez v1, :cond_b9

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->shouldPlayCardAnimator:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    :cond_b9
    return-void
.end method

.method public startDrag()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mIsInDragMode:Z

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->cancelRejectAlarm()V

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->startDrag()V

    return-void
.end method

.method public final startGroupCardExposure()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->startGroupCardExposure()V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final tryRegroup()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getGroupCard()Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v0, "GroupCardView"

    const-string/jumbo v1, "tryRegroup"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->refresh()Z

    :cond_11
    return-void
.end method

.method public updateTargetView(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ev"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "GroupCardView"

    const-string/jumbo p1, "updateTargetView"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/utils/CardNameHelper;->updateTextSize(Lcom/android/launcher3/Launcher;)V

    return-void
.end method
