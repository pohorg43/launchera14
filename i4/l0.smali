.class public final Li4/l0;
.super Li4/c;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li4/c<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li4/c;-><init>()V

    iput-object p1, p0, Li4/l0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    iget v1, p0, Li4/l0;->c:I

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    iget-object v0, p0, Li4/l0;->a:Ljava/util/List;

    iget p0, p0, Li4/l0;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget p0, p0, Li4/l0;->c:I

    return p0
.end method
