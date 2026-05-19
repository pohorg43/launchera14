.class public final Lo5/d0;
.super Lo5/f0;
.source ""

# interfaces
.implements Ly5/v;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/f0;-><init>()V

    iput-object p1, p0, Lo5/d0;->a:Ljava/lang/Class;

    sget-object p1, Li4/y;->a:Li4/y;

    iput-object p1, p0, Lo5/d0;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public K()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Lo5/d0;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/d0;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public getType()Lf5/h;
    .registers 3

    iget-object v0, p0, Lo5/d0;->a:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    goto :goto_1a

    :cond_c
    iget-object p0, p0, Lo5/d0;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6/d;->b(Ljava/lang/String;)Lp6/d;

    move-result-object p0

    invoke-virtual {p0}, Lp6/d;->e()Lf5/h;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
