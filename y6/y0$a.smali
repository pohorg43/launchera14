.class public final Ly6/y0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/y0;-><init>(Li5/a1;)V
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
.field public final synthetic a:Ly6/y0;


# direct methods
.method public constructor <init>(Ly6/y0;)V
    .registers 2

    iput-object p1, p0, Ly6/y0$a;->a:Ly6/y0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ly6/y0$a;->a:Ly6/y0;

    iget-object p0, p0, Ly6/y0;->a:Li5/a1;

    invoke-static {p0}, Ly6/z0;->b(Li5/a1;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
