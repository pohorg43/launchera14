.class public abstract Ld5/g$f;
.super Ld5/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/g$f$e;,
        Ld5/g$f$c;,
        Ld5/g$f$d;,
        Ld5/g$f$a;,
        Ld5/g$f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld5/g<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string p4, "TYPE"

    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    :goto_f
    move-object v3, p3

    const/4 p3, 0x1

    new-array v4, p3, [Ljava/lang/reflect/Type;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p4

    const-string v0, "field.genericType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p4, v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ld5/g;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Ld5/g$f;->e:Z

    return-void
.end method


# virtual methods
.method public c([Ljava/lang/Object;)V
    .registers 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ld5/f$a;->a(Ld5/f;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Ld5/g$f;->e:Z

    if-eqz p0, :cond_1b

    invoke-static {p1}, Li4/k;->J([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null is not allowed as a value for this property."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ld5/g$f;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object p0, p0, Ld5/g;->c:Ljava/lang/Class;

    if-eqz p0, :cond_15

    invoke-static {p1}, Li4/k;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    invoke-static {p1}, Li4/k;->J([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
