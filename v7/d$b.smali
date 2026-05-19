.class public final Lv7/d$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/d;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lu7/h<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Lh4/z;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv7/d;


# direct methods
.method public constructor <init>(Lv7/d;)V
    .registers 2

    iput-object p1, p0, Lv7/d$b;->a:Lv7/d;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lu7/h;

    new-instance p1, Lv7/e;

    iget-object p0, p0, Lv7/d$b;->a:Lv7/d;

    invoke-direct {p1, p0, p2}, Lv7/e;-><init>(Lv7/d;Ljava/lang/Object;)V

    return-object p1
.end method
