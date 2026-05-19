.class public final Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/utils/SystemSettingsAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecureTable"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;->INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4

    const-string p0, "cr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    const-string p0, "cr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 5

    const-string p0, "cr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

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

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable$getString$1;

    invoke-direct {v0, p1, p2}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable$getString$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;->withDefaultString(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "getUriFor(name)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
