.class public final enum Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/statistics/LauncherStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawerOperatePopups"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

.field public static final enum MANAGE_BLANK:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

.field public static final enum MANAGE_SELECT_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

.field public static final enum MANAGE_SORT_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    const-string v1, "MANAGE_SORT_BTN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->MANAGE_SORT_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    new-instance v1, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    const-string v3, "MANAGE_SELECT_BTN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->MANAGE_SELECT_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    new-instance v3, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    const-string v5, "MANAGE_BLANK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->MANAGE_BLANK:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->$VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;
    .registers 2

    const-class v0, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    return-object p0
.end method

.method public static values()[Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;
    .registers 1

    sget-object v0, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->$VALUES:[Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    invoke-virtual {v0}, [Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    return-object v0
.end method
