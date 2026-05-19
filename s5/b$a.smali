.class public final Ls5/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/b;-><init>(Lu5/g;Ly5/a;Lh6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/g;

.field public final synthetic b:Ls5/b;


# direct methods
.method public constructor <init>(Lu5/g;Ls5/b;)V
    .registers 3

    iput-object p1, p0, Ls5/b$a;->a:Lu5/g;

    iput-object p2, p0, Ls5/b$a;->b:Ls5/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ls5/b$a;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->o:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    iget-object p0, p0, Ls5/b$a;->b:Ls5/b;

    iget-object p0, p0, Ls5/b;->a:Lh6/c;

    invoke-virtual {v0, p0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    const-string v0, "c.module.builtIns.getBui…qName(fqName).defaultType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
