.class public final Lo5/y;
.super Lo5/a0;
.source ""

# interfaces
.implements Ly5/n;


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/a0;-><init>()V

    iput-object p1, p0, Lo5/y;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public E()Z
    .registers 1

    iget-object p0, p0, Lo5/y;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result p0

    return p0
.end method

.method public I()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public N()Ljava/lang/reflect/Member;
    .registers 1

    iget-object p0, p0, Lo5/y;->a:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public getType()Ly5/x;
    .registers 4

    iget-object p0, p0, Lo5/y;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "member.genericType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_23

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance p0, Lo5/d0;

    invoke-direct {p0, v1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_4b

    :cond_23
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_45

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_45

    :cond_33
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3f

    new-instance v0, Lo5/i0;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_4a

    :cond_3f
    new-instance v0, Lo5/u;

    invoke-direct {v0, p0}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4a

    :cond_45
    :goto_45
    new-instance v0, Lo5/j;

    invoke-direct {v0, p0}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_4a
    move-object p0, v0

    :goto_4b
    return-object p0
.end method
