.class public final Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;,
        Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0002\u0007\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\t"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;",
        "",
        "Lh3/a;",
        "upkDao",
        "<init>",
        "()V",
        "Companion",
        "a",
        "b",
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
.field public static final Companion:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;

.field private static instance:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;

.field private static final seedlingDatabase:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->Companion:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;

    sget-object v0, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->Companion:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_11
    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->access$getInstance$cp()Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    move-result-object v2

    if-nez v2, :cond_55

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    const-string v3, "seedling-upk-manager.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/room/migration/Migration;

    const/4 v3, 0x0

    invoke-static {}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->access$getMIGRATION_1_to_2$cp()Landroidx/room/migration/Migration;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->access$getMIGRATION_2_to_3$cp()Landroidx/room/migration/Migration;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    const-string v2, "databaseBuilder(\n       …\n                .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    invoke-static {v2}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->access$setInstance$cp(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;)V

    move-object v2, v1

    check-cast v2, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;
    :try_end_53
    .catchall {:try_start_11 .. :try_end_53} :catchall_59

    monitor-exit v0

    goto :goto_56

    :cond_55
    monitor-exit v0

    :goto_56
    sput-object v2, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->seedlingDatabase:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->instance:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;

    return-object v0
.end method

.method public static final synthetic access$getSeedlingDatabase$cp()Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->seedlingDatabase:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;)V
    .registers 1

    sput-object p0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->instance:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;

    return-void
.end method


# virtual methods
.method public final upkDao()Lh3/a;
    .registers 1

    sget-object p0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;->a:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;

    sget-object p0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;->b:Lh3/b;

    return-object p0
.end method
