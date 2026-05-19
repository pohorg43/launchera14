.class final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $displayId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;->$displayId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/Boolean;
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;->$displayId:I

    if-eq p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;->invoke(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
