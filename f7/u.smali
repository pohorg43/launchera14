.class public abstract Lf7/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf7/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/u$a;,
        Lf7/u$b;,
        Lf7/u$c;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lf5/g;",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf7/u;->a:Lkotlin/jvm/functions/Function1;

    const-string p2, "must return "

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf7/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Li5/x;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lf7/f$a;->a(Lf7/f;Li5/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Li5/x;)Z
    .registers 3

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    iget-object p0, p0, Lf7/u;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lf7/u;->b:Ljava/lang/String;

    return-object p0
.end method
