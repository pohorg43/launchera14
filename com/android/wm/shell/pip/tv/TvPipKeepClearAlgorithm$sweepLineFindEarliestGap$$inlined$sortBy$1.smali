.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(Ljava/util/List;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
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
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 TvPipKeepClearAlgorithm.kt\ncom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm\n*L\n1#1,320:1\n559#2:321\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->getPos()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->getPos()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lk4/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
