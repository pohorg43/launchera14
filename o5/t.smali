.class public final Lo5/t;
.super Lo5/f;
.source ""

# interfaces
.implements Ly5/h;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh6/f;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo5/f;-><init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lo5/t;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b()Ly5/x;
    .registers 3

    iget-object p0, p0, Lo5/t;->b:Ljava/lang/Class;

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v0, Lo5/d0;

    invoke-direct {v0, p0}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_3b

    :cond_17
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_36

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_36

    :cond_24
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_30

    new-instance v0, Lo5/i0;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_3b

    :cond_30
    new-instance v0, Lo5/u;

    invoke-direct {v0, p0}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_3b

    :cond_36
    :goto_36
    new-instance v0, Lo5/j;

    invoke-direct {v0, p0}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_3b
    return-object v0
.end method
