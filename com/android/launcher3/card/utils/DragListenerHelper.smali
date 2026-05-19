.class public final Lcom/android/launcher3/card/utils/DragListenerHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/utils/DragListenerHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/utils/DragListenerHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "DragListenerHelper"


# instance fields
.field private final card:Lcom/android/launcher3/card/LauncherCardView;

.field private content:Landroid/view/View;

.field private loadCode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/utils/DragListenerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/utils/DragListenerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/utils/DragListenerHelper;->Companion:Lcom/android/launcher3/card/utils/DragListenerHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 3

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->card:Lcom/android/launcher3/card/LauncherCardView;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->loadCode:I

    return-void
.end method


# virtual methods
.method public final getCard()Lcom/android/launcher3/card/LauncherCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->card:Lcom/android/launcher3/card/LauncherCardView;

    return-object p0
.end method

.method public final getContent()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->content:Landroid/view/View;

    return-object p0
.end method

.method public final getLoadCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->loadCode:I

    return p0
.end method

.method public onDragEnd()V
    .registers 10

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_27

    iget v1, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->loadCode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/android/launcher3/card/utils/DragListenerHelper$onDragEnd$1;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/android/launcher3/card/utils/DragListenerHelper$onDragEnd$1;-><init>(Lcom/android/launcher3/card/utils/DragListenerHelper;Ll4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_27
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    const-string p0, "DragListenerHelper"

    const-string/jumbo p1, "onDragStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setContent(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->content:Landroid/view/View;

    return-void
.end method

.method public final setLoadCode(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/utils/DragListenerHelper;->loadCode:I

    return-void
.end method
