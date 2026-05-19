.class public final Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"
    }
    d2 = {
        "Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;",
        "",
        "Lcom/pantanal/server/content/domail/SeedlingServiceInfo;",
        "empty",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method
