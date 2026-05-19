.class public final Ll5/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/f;->isInner()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/d2;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/f;


# direct methods
.method public constructor <init>(Ll5/f;)V
    .registers 2

    iput-object p1, p0, Ll5/f$a;->a:Ll5/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ly6/d2;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    iget-object p0, p0, Ll5/f$a;->a:Ll5/f;

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    instance-of v0, p1, Li5/a1;

    if-eqz v0, :cond_2b

    check-cast p1, Li5/a1;

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    move p0, v1

    goto :goto_2c

    :cond_2b
    move p0, v2

    :goto_2c
    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
