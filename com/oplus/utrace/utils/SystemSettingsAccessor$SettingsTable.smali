.class public final enum Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/utils/SystemSettingsAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;",
        ">;",
        "Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

.field public static final enum GLOBAL:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

.field public static final enum SECURE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

.field public static final enum SYSTEM:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;


# instance fields
.field private final tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->GLOBAL:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->SECURE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->SYSTEM:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$GlobalTable;->INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$GlobalTable;

    const-string v2, "GLOBAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;-><init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;)V

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->GLOBAL:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;->INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;

    const-string v2, "SECURE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;-><init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;)V

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->SECURE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable;->INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable;

    const-string v2, "SYSTEM"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;-><init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;)V

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->SYSTEM:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    invoke-static {}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->$values()[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->$VALUES:[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;
    .registers 2

    const-class v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->$VALUES:[Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    return-object v0
.end method


# virtual methods
.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 5

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->tableImpl:Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    invoke-interface {p0, p1}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public withDefaultString(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor$DefaultImpls;->withDefaultString(Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
