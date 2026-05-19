.class public final Ll4/g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ll4/f;",
        "Ll4/f$a;",
        "Ll4/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll4/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll4/g;

    invoke-direct {v0}, Ll4/g;-><init>()V

    sput-object v0, Ll4/g;->a:Ll4/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ll4/f;

    check-cast p2, Ll4/f$a;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object p0

    invoke-interface {p1, p0}, Ll4/f;->minusKey(Ll4/f$b;)Ll4/f;

    move-result-object p0

    sget-object p1, Ll4/h;->a:Ll4/h;

    if-ne p0, p1, :cond_1b

    goto :goto_46

    :cond_1b
    sget v0, Ll4/e;->J:I

    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    check-cast v1, Ll4/e;

    if-nez v1, :cond_2e

    new-instance p1, Ll4/c;

    invoke-direct {p1, p0, p2}, Ll4/c;-><init>(Ll4/f;Ll4/f$a;)V

    :goto_2c
    move-object p2, p1

    goto :goto_46

    :cond_2e
    invoke-interface {p0, v0}, Ll4/f;->minusKey(Ll4/f$b;)Ll4/f;

    move-result-object p0

    if-ne p0, p1, :cond_3b

    new-instance p0, Ll4/c;

    invoke-direct {p0, p2, v1}, Ll4/c;-><init>(Ll4/f;Ll4/f$a;)V

    move-object p2, p0

    goto :goto_46

    :cond_3b
    new-instance p1, Ll4/c;

    new-instance v0, Ll4/c;

    invoke-direct {v0, p0, p2}, Ll4/c;-><init>(Ll4/f;Ll4/f$a;)V

    invoke-direct {p1, v0, v1}, Ll4/c;-><init>(Ll4/f;Ll4/f$a;)V

    goto :goto_2c

    :goto_46
    return-object p2
.end method
