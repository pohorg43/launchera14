.class Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl$3;
.super Landroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl$3;->this$0:Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "DELETE FROM predicted_info WHERE user= ?  AND component LIKE ? || \'%\'"

    return-object p0
.end method
