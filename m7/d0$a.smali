.class public final Lm7/d0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public static final a:Lm7/d0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/d0$a;

    invoke-direct {v0}, Lm7/d0$a;-><init>()V

    sput-object v0, Lm7/d0$a;->a:Lm7/d0$a;

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
    .registers 3

    check-cast p1, Ll4/f;

    check-cast p2, Ll4/f$a;

    instance-of p0, p2, Lm7/c0;

    if-eqz p0, :cond_13

    check-cast p2, Lm7/c0;

    invoke-interface {p2}, Lm7/c0;->k()Lm7/c0;

    move-result-object p0

    invoke-interface {p1, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    goto :goto_17

    :cond_13
    invoke-interface {p1, p2}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    :goto_17
    return-object p0
.end method
