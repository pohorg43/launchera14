.class public final Lv5/m;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lm6/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;

.field public final synthetic b:Ly5/n;

.field public final synthetic c:Ll5/f0;


# direct methods
.method public constructor <init>(Lv5/l;Ly5/n;Ll5/f0;)V
    .registers 4

    iput-object p1, p0, Lv5/m;->a:Lv5/l;

    iput-object p2, p0, Lv5/m;->b:Ly5/n;

    iput-object p3, p0, Lv5/m;->c:Ll5/f0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lv5/m;->a:Lv5/l;

    iget-object v0, v0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->h:Ls5/f;

    iget-object v1, p0, Lv5/m;->b:Ly5/n;

    iget-object p0, p0, Lv5/m;->c:Ll5/f0;

    invoke-interface {v0, v1, p0}, Ls5/f;->a(Ly5/n;Li5/o0;)Lm6/g;

    move-result-object p0

    return-object p0
.end method
