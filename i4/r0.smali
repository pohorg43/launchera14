.class public final Li4/r0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj7/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj7/h<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt\n*L\n1#1,680:1\n19#2:681\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj7/h;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lj7/h;IIZZ)V
    .registers 6

    iput-object p1, p0, Li4/r0;->a:Lj7/h;

    iput p2, p0, Li4/r0;->b:I

    iput p3, p0, Li4/r0;->c:I

    iput-boolean p4, p0, Li4/r0;->d:Z

    iput-boolean p5, p0, Li4/r0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Li4/r0;->a:Lj7/h;

    invoke-interface {v0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Li4/r0;->b:I

    iget v2, p0, Li4/r0;->c:I

    iget-boolean v3, p0, Li4/r0;->d:Z

    iget-boolean p0, p0, Li4/r0;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Li4/q0;->b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
