.class public final Lv5/e$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh6/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/e;


# direct methods
.method public constructor <init>(Lv5/e;)V
    .registers 2

    iput-object p1, p0, Lv5/e$b;->a:Lv5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lv5/e$b;->a:Lv5/e;

    iget-object p0, p0, Lv5/e;->b:Ly5/a;

    invoke-interface {p0}, Ly5/a;->c()Lh6/b;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method
