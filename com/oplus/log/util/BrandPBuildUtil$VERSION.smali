.class public Lcom/oplus/log/util/BrandPBuildUtil$VERSION;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/util/BrandPBuildUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final RELEASE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "ro.rom.version"

    invoke-static {v0}, Lcom/oplus/log/util/BrandPBuildUtil;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/BrandPBuildUtil$VERSION;->RELEASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
