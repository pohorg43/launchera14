.class public abstract Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Landroidx/room/Database;
    entities = {
        Li3/a;
    }
    exportSchema = false
    version = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\'\u0018\u0000 \u00062\u00020\u0001:\u0001\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\b"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;",
        "Landroidx/room/RoomDatabase;",
        "Lh3/a;",
        "upkDao",
        "<init>",
        "()V",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

.field private static final DB_NAME:Ljava/lang/String; = "seedling-upk-manager.db"

.field private static final MIGRATION_1_to_2:Landroidx/room/migration/Migration;

.field private static final MIGRATION_2_to_3:Landroidx/room/migration/Migration;

.field private static final TAG:Ljava/lang/String; = "SeedlingDatabase"

.field private static final VERSION_1:I = 0x1

.field private static final VERSION_2:I = 0x2

.field private static final VERSION_3:I = 0x3

.field private static instance:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->Companion:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_1_to_2$1;

    invoke-direct {v0}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_1_to_2$1;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->MIGRATION_1_to_2:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_2_to_3$1;

    invoke-direct {v0}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_2_to_3$1;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->MIGRATION_2_to_3:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->instance:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_1_to_2$cp()Landroidx/room/migration/Migration;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->MIGRATION_1_to_2:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$getMIGRATION_2_to_3$cp()Landroidx/room/migration/Migration;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->MIGRATION_2_to_3:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;)V
    .registers 1

    sput-object p0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->instance:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    return-void
.end method


# virtual methods
.method public abstract upkDao()Lh3/a;
.end method
