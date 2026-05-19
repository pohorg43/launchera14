.class public final Ll6/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/d;->a(Ly6/q1;Li5/a1;)Ly6/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/q1;


# direct methods
.method public constructor <init>(Ly6/q1;)V
    .registers 2

    iput-object p1, p0, Ll6/d$a;->a:Ly6/q1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Ll6/d$a;->a:Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    const-string v0, "this@createCapturedIfNeeded.type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
