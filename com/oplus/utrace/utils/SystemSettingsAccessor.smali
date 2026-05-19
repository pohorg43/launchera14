.class public final Lcom/oplus/utrace/utils/SystemSettingsAccessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$SettingsTable;,
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;,
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$GlobalTable;,
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$SecureTable;,
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/SystemSettingsAccessor;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/SystemSettingsAccessor;->INSTANCE:Lcom/oplus/utrace/utils/SystemSettingsAccessor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
