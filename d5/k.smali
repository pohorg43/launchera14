.class public abstract Ld5/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld5/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/k$b;,
        Ld5/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld5/f<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/k;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ld5/k;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unboxMethod.returnType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld5/k;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld5/k;->b:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic b()Ljava/lang/reflect/Member;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReturnType()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Ld5/k;->c:Ljava/lang/reflect/Type;

    return-object p0
.end method
