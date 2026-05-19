.class public final enum Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/nx/obus/StatisticsConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AreaCodeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field public static final enum CN:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field public static final enum EU:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field public static final enum SA:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field public static final enum SEA:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    const-string v1, "CN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->CN:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    new-instance v1, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    const-string v3, "EU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->EU:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    new-instance v3, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    const-string v5, "SA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->SA:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    new-instance v5, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    const-string v7, "SEA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->SEA:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->$VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
    .registers 2

    const-class v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-object p0
.end method

.method public static values()[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
    .registers 1

    sget-object v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->$VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    invoke-virtual {v0}, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-object v0
.end method
