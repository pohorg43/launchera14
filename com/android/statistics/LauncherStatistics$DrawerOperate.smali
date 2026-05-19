.class public final enum Lcom/android/statistics/LauncherStatistics$DrawerOperate;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/statistics/LauncherStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawerOperate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/statistics/LauncherStatistics$DrawerOperate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperate;

.field public static final enum MANAGE_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;

.field public static final enum SEARCH_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    const-string v1, "MANAGE_BTN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/statistics/LauncherStatistics$DrawerOperate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->MANAGE_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    new-instance v1, Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    const-string v3, "SEARCH_BTN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/statistics/LauncherStatistics$DrawerOperate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->SEARCH_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->$VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperate;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/statistics/LauncherStatistics$DrawerOperate;
    .registers 2

    const-class v0, Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    return-object p0
.end method

.method public static values()[Lcom/android/statistics/LauncherStatistics$DrawerOperate;
    .registers 1

    sget-object v0, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->$VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    invoke-virtual {v0}, [Lcom/android/statistics/LauncherStatistics$DrawerOperate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    return-object v0
.end method
