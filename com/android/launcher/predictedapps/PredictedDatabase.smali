.class public abstract Lcom/android/launcher/predictedapps/PredictedDatabase;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/android/launcher/predictedapps/PredictedInfo;
    }
    version = 0x2
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "app-prediction.db"

.field public static final DB_VERSION:I = 0x2

.field public static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final sSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/launcher/predictedapps/PredictedDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/predictedapps/PredictedDatabase$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/predictedapps/PredictedDatabase$1;-><init>(II)V

    sput-object v0, Lcom/android/launcher/predictedapps/PredictedDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/android/launcher/predictedapps/PredictedDatabase$2;

    invoke-direct {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase$2;-><init>()V

    sput-object v0, Lcom/android/launcher/predictedapps/PredictedDatabase;->sSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;
    .registers 1

    sget-object v0, Lcom/android/launcher/predictedapps/PredictedDatabase;->sSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/predictedapps/PredictedDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;
.end method
