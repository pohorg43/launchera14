.class public final Li7/b$a;
.super Li7/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/b;->d(Ljava/util/Collection;Li7/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li7/b$b<",
        "TN;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:[Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;[Z)V
    .registers 3

    iput-object p1, p0, Li7/b$a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Li7/b$a;->b:[Z

    invoke-direct {p0}, Li7/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Li7/b$a;->b:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Li7/b$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    iget-object p1, p0, Li7/b$a;->b:[Z

    aput-boolean v0, p1, v1

    :cond_14
    iget-object p0, p0, Li7/b$a;->b:[Z

    aget-boolean p0, p0, v1

    xor-int/2addr p0, v0

    return p0
.end method
