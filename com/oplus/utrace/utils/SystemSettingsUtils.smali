.class public final enum Lcom/oplus/utrace/utils/SystemSettingsUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/utils/SystemSettingsUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/utils/SystemSettingsUtils;

.field public static final enum LOG_DEBUG_LEVEL:Lcom/oplus/utrace/utils/SystemSettingsUtils;


# instance fields
.field private final mAppointUri:Landroid/net/Uri;

.field private final mKeyName:Ljava/lang/String;

.field private final mTable:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/utils/SystemSettingsUtils;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oplus/utrace/utils/SystemSettingsUtils;

    sget-object v1, Lcom/oplus/utrace/utils/SystemSettingsUtils;->LOG_DEBUG_LEVEL:Lcom/oplus/utrace/utils/SystemSettingsUtils;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 9

    new-instance v8, Lcom/oplus/utrace/utils/SystemSettingsUtils;

    sget-object v3, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;->SYSTEM:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    const-string v1, "LOG_DEBUG_LEVEL"

    const/4 v2, 0x0

    const-string v4, "log_switch_type"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/utrace/utils/SystemSettingsUtils;-><init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/oplus/utrace/utils/SystemSettingsUtils;->LOG_DEBUG_LEVEL:Lcom/oplus/utrace/utils/SystemSettingsUtils;

    invoke-static {}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->$values()[Lcom/oplus/utrace/utils/SystemSettingsUtils;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->$VALUES:[Lcom/oplus/utrace/utils/SystemSettingsUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mTable:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    iput-object p4, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mKeyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mAppointUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/utrace/utils/SystemSettingsUtils;-><init>(Ljava/lang/String;ILcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private final getAppointUri()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mAppointUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic getFloat$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;FILjava/lang/Object;)F
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getFloat(Landroid/content/ContentResolver;F)F

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFloat"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getInt$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;IILjava/lang/Object;)I
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getInt(Landroid/content/ContentResolver;I)I

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getInt"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getLong$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;JILjava/lang/Object;)J
    .registers 6

    if-nez p5, :cond_d

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_8

    const-wide/16 p2, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getLong(Landroid/content/ContentResolver;J)J

    move-result-wide p0

    return-wide p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLong"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getString$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mTable:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/utils/SystemSettingsUtils;
    .registers 2

    const-class v0, Lcom/oplus/utrace/utils/SystemSettingsUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/utils/SystemSettingsUtils;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->$VALUES:[Lcom/oplus/utrace/utils/SystemSettingsUtils;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/utils/SystemSettingsUtils;

    return-object v0
.end method


# virtual methods
.method public final getFloat(Landroid/content/ContentResolver;)F
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getFloat$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;FILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final getFloat(Landroid/content/ContentResolver;F)F
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getInt(Landroid/content/ContentResolver;)I
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getInt$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getInt(Landroid/content/ContentResolver;I)I
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getKeyName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsUtils;->mKeyName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLong(Landroid/content/ContentResolver;)J
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getLong$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;JILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLong(Landroid/content/ContentResolver;J)J
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getString$default(Lcom/oplus/utrace/utils/SystemSettingsUtils;Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getAppointUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getTable()Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsUtils;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_12
    return-object v0
.end method
