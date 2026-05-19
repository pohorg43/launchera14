.class public final Lr7/h0$a;
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
        "Ljava/lang/Object;",
        "Ll4/f$a;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr7/h0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr7/h0$a;

    invoke-direct {v0}, Lr7/h0$a;-><init>()V

    sput-object v0, Lr7/h0$a;->a:Lr7/h0$a;

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

    check-cast p2, Ll4/f$a;

    instance-of p0, p2, Lm7/l2;

    if-eqz p0, :cond_21

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_d

    check-cast p1, Ljava/lang/Integer;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    const/4 p0, 0x1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_17

    :cond_16
    move p1, p0

    :goto_17
    if-nez p1, :cond_1b

    move-object p1, p2

    goto :goto_21

    :cond_1b
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object p1, p0

    :cond_21
    :goto_21
    return-object p1
.end method
