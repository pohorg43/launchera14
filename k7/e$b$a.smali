.class public final Lk7/e$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/e$b;->iterator()Ljava/util/Iterator;
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
        "Lk7/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk7/e$b;


# direct methods
.method public constructor <init>(Lk7/e$b;)V
    .registers 2

    iput-object p1, p0, Lk7/e$b$a;->a:Lk7/e$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lk7/e$b$a;->a:Lk7/e$b;

    iget-object v0, p0, Lk7/e$b;->a:Lk7/e;

    iget-object v0, v0, Lk7/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-static {v1, v0}, Ly4/h;->e(II)Ly4/d;

    move-result-object v0

    invoke-virtual {v0}, Ly4/d;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_35

    new-instance v1, Lk7/d;

    iget-object p0, p0, Lk7/e$b;->a:Lk7/e;

    iget-object p0, p0, Lk7/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "matchResult.group(index)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lk7/d;-><init>(Ljava/lang/String;Ly4/d;)V

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    return-object v1
.end method
