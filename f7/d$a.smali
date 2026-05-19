.class public final Lf7/d$a;
.super Li4/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public final synthetic d:Lf7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf7/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/d<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lf7/d$a;->d:Lf7/d;

    invoke-direct {p0}, Li4/b;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lf7/d$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :cond_0
    iget v0, p0, Lf7/d$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf7/d$a;->c:I

    iget-object v1, p0, Lf7/d$a;->d:Lf7/d;

    iget-object v1, v1, Lf7/d;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    :cond_11
    array-length v2, v1

    if-lt v0, v2, :cond_19

    sget-object v0, Li4/s0;->c:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    goto :goto_23

    :cond_19
    aget-object v0, v1, v0

    const-string v1, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li4/b;->b(Ljava/lang/Object;)V

    :goto_23
    return-void
.end method
