.class public final Lv7/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv7/d;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv7/d;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lv7/e;->a:Lv7/d;

    iput-object p2, p0, Lv7/e;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lv7/e;->a:Lv7/d;

    iget-object p0, p0, Lv7/e;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lv7/d;->a(Ljava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
