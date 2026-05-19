.class public final Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u0016\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\b¨\u0006\u000f"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;",
        "",
        "",
        "entrance",
        "importance",
        "",
        "shouldShowInEntrance",
        "IMPORTANCE_1",
        "I",
        "IMPORTANCE_2",
        "IMPORTANCE_3",
        "IMPORTANCE_4",
        "IMPORTANCE_5",
        "<init>",
        "()V",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;

.field public static final IMPORTANCE_1:I = 0x1

.field public static final IMPORTANCE_2:I = 0x2

.field public static final IMPORTANCE_3:I = 0x3

.field public static final IMPORTANCE_4:I = 0x4

.field public static final IMPORTANCE_5:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;

    invoke-direct {v0}, Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/UpkConstants$IMPORTANCE$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldShowInEntrance(II)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/16 v2, 0x8

    if-eq p1, v2, :cond_23

    const/16 v1, 0x10

    if-eq p1, v1, :cond_26

    const/16 v1, 0x80

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x100

    if-eq p1, v1, :cond_26

    const/16 v1, 0x200

    if-eq p1, v1, :cond_26

    goto :goto_2d

    :cond_1f
    const/4 p1, 0x5

    if-lt p2, p1, :cond_2d

    goto :goto_2c

    :cond_23
    if-lt p2, v1, :cond_2d

    goto :goto_2c

    :cond_26
    const/4 p1, 0x3

    if-lt p2, p1, :cond_2d

    goto :goto_2c

    :cond_2a
    if-lt p2, v0, :cond_2d

    :goto_2c
    move p0, v0

    :cond_2d
    :goto_2d
    return p0
.end method
