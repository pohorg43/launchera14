.class public final Lpantanal/app/app_card/engine/SmartEngine$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/app_card/engine/SmartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isErrorCode(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/4 p0, 0x4

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method
