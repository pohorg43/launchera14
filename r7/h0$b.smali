.class public final Lr7/h0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/l2<",
        "*>;",
        "Ll4/f$a;",
        "Lm7/l2<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lr7/h0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr7/h0$b;

    invoke-direct {v0}, Lr7/h0$b;-><init>()V

    sput-object v0, Lr7/h0$b;->a:Lr7/h0$b;

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

    check-cast p1, Lm7/l2;

    check-cast p2, Ll4/f$a;

    if-eqz p1, :cond_7

    goto :goto_11

    :cond_7
    instance-of p0, p2, Lm7/l2;

    if-eqz p0, :cond_f

    check-cast p2, Lm7/l2;

    move-object p1, p2

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    move-object p1, p0

    :goto_11
    return-object p1
.end method
