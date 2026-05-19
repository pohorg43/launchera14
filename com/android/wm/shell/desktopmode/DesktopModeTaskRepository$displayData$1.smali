.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;
.super Landroid/util/SparseArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreate(I)Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(displayId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    return-object p0
.end method
