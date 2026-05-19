.class public final Lv5/n;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lx6/j<",
        "+",
        "Lm6/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;

.field public final synthetic b:Ly5/n;

.field public final synthetic c:Ll5/f0;


# direct methods
.method public constructor <init>(Lv5/l;Ly5/n;Ll5/f0;)V
    .registers 4

    iput-object p1, p0, Lv5/n;->a:Lv5/l;

    iput-object p2, p0, Lv5/n;->b:Ly5/n;

    iput-object p3, p0, Lv5/n;->c:Ll5/f0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lv5/n;->a:Lv5/l;

    iget-object v1, v0, Lv5/l;->b:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->a:Lx6/m;

    new-instance v2, Lv5/m;

    iget-object v3, p0, Lv5/n;->b:Ly5/n;

    iget-object p0, p0, Lv5/n;->c:Ll5/f0;

    invoke-direct {v2, v0, v3, p0}, Lv5/m;-><init>(Lv5/l;Ly5/n;Ll5/f0;)V

    invoke-interface {v1, v2}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object p0

    return-object p0
.end method
