.class public final Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final NOTIFICATION_LG:Ljava/lang/String; = "notification_lg"

.field public static final NOTIFICATION_MD:Ljava/lang/String; = "notification_md"

.field public static final NOTIFICATION_SM:Ljava/lang/String; = "notification_sm"

.field public static final ONE_PLUS_TWO:Ljava/lang/String; = "1*2"

.field public static final TWO_PLUS_FOUR:Ljava/lang/String; = "2*4"

.field public static final TWO_PLUS_TWO:Ljava/lang/String; = "2*2"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
