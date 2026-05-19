.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 DesktopTasksController.kt\ncom/android/wm/shell/desktopmode/DesktopTasksController\n*L\n1#1,320:1\n355#2:321\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $allTasksInZOrder$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lk4/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
