.class public final Lu6/f0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/f0;-><init>(Lu6/m;Lu6/f0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Li5/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/f0;


# direct methods
.method public constructor <init>(Lu6/f0;)V
    .registers 2

    iput-object p1, p0, Lu6/f0$a;->a:Lu6/f0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lu6/f0$a;->a:Lu6/f0;

    iget-object v0, p0, Lu6/f0;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    invoke-static {v0, p1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p1

    iget-boolean v0, p1, Lh6/b;->c:Z

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    invoke-virtual {p0, p1}, Lu6/k;->b(Lh6/b;)Li5/e;

    move-result-object p0

    goto :goto_27

    :cond_1d
    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->b:Li5/e0;

    invoke-static {p0, p1}, Li5/w;->b(Li5/e0;Lh6/b;)Li5/h;

    move-result-object p0

    :goto_27
    return-object p0
.end method
