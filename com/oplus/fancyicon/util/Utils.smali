.class public Lcom/oplus/fancyicon/util/Utils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/util/Utils$Point;,
        Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;,
        Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;
    }
.end annotation


# static fields
.field private static final CONFIG_ICONS_NAME_ARRAY:[Ljava/lang/String;

.field private static final CONFIG_ICONS_SHAPE_ARRAY:[I

.field private static final GOOGLE_SECURITY_PATCH_VERSION_CODE:I = 0x322

.field private static final ICON_PACK_NAME:Ljava/lang/String; = "icon_pack_name"

.field private static final KEY_UX_ICON_CONFIG:Ljava/lang/String; = "key_ux_icon_config"

.field private static final PAC_MAN_ICON_PACK_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.iconpack.pacman"

.field private static final RESOLUTION_AUTO_VALUE:I = 0x1

.field private static final RESOLUTION_DEFAULT_DISPLAY:I = 0x1e0

.field private static final RESOLUTION_DEFAULT_TWO_K_WIDTH:I = 0x5a0

.field private static final RESOLUTION_DEFAULT_WIDTH:I = 0x438

.field private static final RESOLUTION_FHD_VALUE:I = 0x2

.field private static final RESOLUTION_QHD_VALUE:I = 0x3

.field private static final RESOLUTION_SWITCH_VALUE:Ljava/lang/String; = "oplus_customize_screen_resolution_adjust"

.field public static final SDK_JELLY_BEAN:I = 0x10

.field public static final SDK_JELLY_BEAN_MR1:I = 0x11

.field public static final SDK_JELLY_BEAN_MR2:I = 0x12

.field public static final SDK_KITKAT:I = 0x13

.field public static final SDK_N:I = 0x18

.field public static final SDK_Q:I = 0x1d

.field private static final SYSTEM_PROPERTIES_THEMEFLAG:Ljava/lang/String; = "persist.sys.themeflag"

.field private static final SYSTEM_PROPERTIES_THEME_VERSION:Ljava/lang/String; = "ro.oplus.theme.version"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final THEME_BIT_LENGTH:I = 0x4

.field private static final THEME_ICON_PACK:I = 0x5

.field private static final TWO_K_DEFAULT_DISPLAY:I = 0x280

.field private static final VENDOR_OPLUS_MARKET_NAME:Ljava/lang/String; = "OnePlus Nord 2 PAC-MAN ED"

.field private static sCommonStyleConfigRangeArray:[I

.field private static sDefaultThemeFlag:I

.field private static sLastThemeChanged:I

.field private static sSpecialStyleConfigArray:[I

.field private static sSpecialStylePrefixArray:[Ljava/lang/String;

.field private static sThemeFlag:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "icons-rectangle"

    const-string v1, "icons-meterial"

    const-string v2, "icons-pebble"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/util/Utils;->CONFIG_ICONS_NAME_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/oplus/fancyicon/util/Utils;->CONFIG_ICONS_SHAPE_ARRAY:[I

    const/4 v0, 0x0

    sput v0, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/oplus/fancyicon/util/Utils;->sThemeFlag:J

    sput v0, Lcom/oplus/fancyicon/util/Utils;->sLastThemeChanged:I

    return-void

    :array_1e
    .array-data 4
        0x2
        0x1
        0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "_"

    invoke-static {p0, v0, p1}, Lcom/oplus/fancyicon/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asserts(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "assert error"

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    const/4 p0, 0x1

    return p0

    :catch_11
    move-exception p0

    const-string p1, "checkPackageExist,e = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static dist(Lcom/oplus/fancyicon/util/Utils$Point;Lcom/oplus/fancyicon/util/Utils$Point;Z)D
    .registers 7

    iget-wide v0, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide v2, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    iget-wide p0, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    sub-double/2addr v2, p0

    if-eqz p2, :cond_14

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_14
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    return p2
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    new-instance v0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "fail to get attribute name: %s of Element %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    return p2
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    new-instance v0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "fail to get attribute name: %s of Element %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    return-wide p2
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    new-instance v0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "fail to get attribute name: %s of Element %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBooleanSystemProperty(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-static {v1, v2, v3}, Lcom/oplus/fancyicon/util/ReflectUtil;->processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_32

    :catch_1a
    move-exception p0

    const-string p1, "getBooleanSystemProperty, e = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_32
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_3d

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3d
    return v0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_2a

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    check-cast v3, Lorg/w3c/dom/Element;

    return-object v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2a
    return-object v0
.end method

.method private static getCommonStyleConfigRangeArray()[I
    .registers 1

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->initIconRes()V

    sget-object v0, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    return-object v0
.end method

.method public static getCustomIconShapeId()I
    .registers 2

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getCommonStyleConfigRangeArray()[I

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getDefaultDisplayDensity(Landroid/content/Context;)I
    .registers 9

    invoke-static {}, Lcom/oplus/fancyicon/util/FeatureOption;->isSupportResolutionSwitch()Z

    move-result v0

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const-string v3, "Utils"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "oplus_customize_screen_resolution_adjust"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenDensityId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    return v2

    :cond_30
    if-ne v0, v5, :cond_33

    goto :goto_35

    :cond_33
    return v1

    :cond_34
    move v5, v4

    :goto_35
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_6a

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultDisplayContext , screenWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x5a0

    if-ne p0, v3, :cond_63

    return v1

    :cond_63
    if-eqz v5, :cond_6a

    const/16 v1, 0x438

    if-ne p0, v1, :cond_6a

    return v2

    :cond_6a
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_76

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_76
    const/16 p0, 0xa0

    if-ge v4, p0, :cond_7c

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :cond_7c
    return v4
.end method

.method public static getDefaultIconFileFromProduct()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH_PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultIconsFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->initIconRes()V

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getMeterialIconShapeId()I

    move-result v1

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->getIconConfigFromSettings(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->getIconShape(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result v1

    :cond_21
    sget-object p0, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    array-length p0, p0

    sget-object v2, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_S:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_43

    :cond_32
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_R:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_41

    move-object v2, v3

    goto :goto_43

    :cond_41
    sget-object v2, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_CARRIER:Ljava/lang/String;

    :goto_43
    const/4 v3, 0x0

    move v4, v3

    :goto_45
    if-ge v4, p0, :cond_74

    sget-object v5, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    aget v5, v5, v4

    if-ne v1, v5, :cond_71

    sget-object v1, Lcom/oplus/fancyicon/util/Utils;->CONFIG_ICONS_NAME_ARRAY:[Ljava/lang/String;

    array-length v5, v1

    if-ge v4, v5, :cond_5f

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5f
    add-int/lit8 p0, p0, -0x1

    if-ne v4, p0, :cond_70

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_70
    return-object v0

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_74
    sget-object p0, Lcom/oplus/fancyicon/util/Utils;->sSpecialStyleConfigArray:[I

    if-eqz p0, :cond_9f

    array-length p0, p0

    :goto_79
    if-ge v3, p0, :cond_9f

    sget-object v2, Lcom/oplus/fancyicon/util/Utils;->sSpecialStyleConfigArray:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_9c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oplus/fancyicon/util/Utils;->sSpecialStylePrefixArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_9f
    return-object v0
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1e0

    if-le p0, v0, :cond_7

    const-string p0, "xxxhdpi"

    goto :goto_10

    :cond_7
    const/16 v0, 0x140

    if-le p0, v0, :cond_e

    const-string p0, "xxhdpi"

    goto :goto_10

    :cond_e
    const-string p0, "xhdpi"

    :goto_10
    return-object p0
.end method

.method public static getIconConfigFromSettings(Landroid/content/Context;)J
    .registers 4

    invoke-static {}, Landroid/content/res/OplusThemeManager;->getInstance()Landroid/content/res/OplusThemeManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/OplusThemeManager;->getIconConfigFromSettings(Landroid/content/ContentResolver;Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIconShape(Lcom/oplus/uxicon/helper/IconConfig;)I
    .registers 2
    .param p0  # Lcom/oplus/uxicon/helper/IconConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_e

    const-string p0, "Utils"

    const-string v0, "getIconShape. iconConfig == null"

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getMeterialIconShapeId()I

    move-result p0

    return p0

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p0

    return p0
.end method

.method public static getLongSystemProperty(Ljava/lang/String;J)J
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLong"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/oplus/fancyicon/util/ReflectUtil;->processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_32

    :catch_1a
    move-exception p0

    const-string p1, "getLongSystemProperty, e = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_32
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_3d

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getMeterialIconShapeId()I
    .registers 2

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getCommonStyleConfigRangeArray()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getRectangleIconShapeId()I
    .registers 2

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getCommonStyleConfigRangeArray()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getResolutionSuffix(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "Utils"

    if-nez p0, :cond_b

    const-string p0, "getResolutionSuffix,context is null"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result p0

    if-eqz v2, :cond_49

    if-nez p0, :cond_18

    goto :goto_49

    :cond_18
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_49
    :goto_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionSuffix,windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "windowHeight = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/fancyicon/util/ReflectUtil;->processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2b

    :catch_13
    move-exception p0

    const-string v0, "getSystemProperty, e = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_2b
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_32

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_32
    return-object p1
.end method

.method public static getThemeFlag(I)J
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-class v1, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/Utils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-wide v0, v0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    return-wide v0

    :cond_1d
    const-string v0, "persist.sys.themeflag"

    if-lez p0, :cond_27

    const-string v1, "."

    invoke-static {v0, v1, p0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_27
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/fancyicon/util/Utils;->getLongSystemProperty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThirdPartyThemeZipIconsPath()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result v0

    if-lez v0, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_THIRD_PARTY_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_THIRD_PARTY_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.UserHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "myUserId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/oplus/fancyicon/util/ReflectUtil;->processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_28

    :catch_10
    move-exception v1

    const-string v2, "getUserId, e = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_28
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_32

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_32
    return v0
.end method

.method private static getUxIconConfig()J
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-class v1, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/Utils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-wide v0, v0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    return-wide v0

    :cond_1d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUxIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    :try_start_0
    const-string v0, "com.oplus.icon.OplusUxIconManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUxIconDrawable"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const/4 p0, 0x3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/oplus/fancyicon/util/ReflectUtil;->processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_40

    :catch_28
    move-exception p0

    const-string p1, "getIconMask, e = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_40
    return-object p0
.end method

.method public static getVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)D
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oplus/fancyicon/util/Utils;->getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)D
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_e

    const-wide/16 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_12
    return-wide p0
.end method

.method public static getVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oplus/fancyicon/util/Utils;->getVariableString(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVariableString(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :try_start_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowHeight,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .registers 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :try_start_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowWidth,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static initIconRes()V
    .registers 2

    sget-object v0, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    if-nez v0, :cond_1a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStyleConfigRangeArray(Landroid/content/res/Resources;)[I

    move-result-object v1

    sput-object v1, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    invoke-static {v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getSpecialStyleConfigRangeArray(Landroid/content/res/Resources;)[I

    move-result-object v1

    sput-object v1, Lcom/oplus/fancyicon/util/Utils;->sSpecialStyleConfigArray:[I

    invoke-static {v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getSpecialStylePrefixArray(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/util/Utils;->sSpecialStylePrefixArray:[Ljava/lang/String;

    :cond_1a
    sget-object v0, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    if-nez v0, :cond_29

    const-string v0, "Utils"

    const-string v1, "old version: get default CONFIG_ICONS_SHAPE_ARRAY"

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/fancyicon/util/Utils;->CONFIG_ICONS_SHAPE_ARRAY:[I

    sput-object v0, Lcom/oplus/fancyicon/util/Utils;->sCommonStyleConfigRangeArray:[I

    :cond_29
    return-void
.end method

.method public static isDefaultThemeIcon()Z
    .registers 10

    sget v0, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    const/4 v1, 0x1

    if-nez v0, :cond_5e

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result v0

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isThemeOSVersionAbove802()Z

    move-result v2

    const-string v3, "Utils"

    if-eqz v2, :cond_47

    const-string v2, "persist.sys.themeflag"

    if-lez v0, :cond_1b

    const-string v4, "."

    invoke-static {v2, v4, v0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_1b
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/oplus/fancyicon/util/Utils;->getLongSystemProperty(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/oplus/fancyicon/util/Utils;->sThemeFlag:J

    const-string v2, "isDefaultTheme: userId = "

    const-string v6, " themeFlag: "

    invoke-static {v2, v0, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v6, Lcom/oplus/fancyicon/util/Utils;->sThemeFlag:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x10

    sget-wide v8, Lcom/oplus/fancyicon/util/Utils;->sThemeFlag:J

    and-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-nez v0, :cond_43

    sput v1, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    goto :goto_4c

    :cond_43
    const/4 v0, -0x1

    sput v0, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    goto :goto_4c

    :cond_47
    const-string v0, "theme verison error."

    invoke-static {v3, v0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    const-string v0, "isDefaultTheme. sDefaultThemeFlag = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    sget v0, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    if-lez v0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    return v1
.end method

.method public static isNULL(Ljava/lang/Object;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isOplusThemeChange(Landroid/content/res/Resources;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    const-class v1, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/Utils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1a

    iget p0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    goto :goto_1b

    :cond_1a
    move p0, v0

    :goto_1b
    sget v1, Lcom/oplus/fancyicon/util/Utils;->sLastThemeChanged:I

    if-eq p0, v1, :cond_23

    sput p0, Lcom/oplus/fancyicon/util/Utils;->sLastThemeChanged:I

    const/4 p0, 0x1

    return p0

    :cond_23
    return v0
.end method

.method public static isPacMan(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUxIconConfig()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result v1

    const-string v3, "icon_pack_name"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ro.vendor.oplus.market.name"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/oplus/fancyicon/util/Utils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OnePlus Nord 2 PAC-MAN ED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "com.oneplus.iconpack.pacman"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    move v2, p0

    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPacMan isPacMan="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " themeConfig="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static isThemeOSVersionAbove802()Z
    .registers 5

    const-string v0, "Utils"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "ro.oplus.theme.version"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/util/Utils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_26

    :catch_10
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeOSVersionAbove802, error. e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeOSVersionAbove802, versionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x322

    if-le v2, v0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1
.end method

.method public static mixAlpha(II)I
    .registers 3

    const/16 v0, 0xff

    if-ge p0, v0, :cond_11

    if-lt p1, v0, :cond_7

    return p0

    :cond_7
    mul-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x437f0000  # 255.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_11
    return p1
.end method

.method public static pointProjectionOnSegment(Lcom/oplus/fancyicon/util/Utils$Point;Lcom/oplus/fancyicon/util/Utils$Point;Lcom/oplus/fancyicon/util/Utils$Point;Z)Lcom/oplus/fancyicon/util/Utils$Point;
    .registers 11

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/util/Utils$Point;->minus(Lcom/oplus/fancyicon/util/Utils$Point;)Lcom/oplus/fancyicon/util/Utils$Point;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/oplus/fancyicon/util/Utils$Point;->minus(Lcom/oplus/fancyicon/util/Utils$Point;)Lcom/oplus/fancyicon/util/Utils$Point;

    move-result-object p2

    iget-wide v1, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide v3, p2, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    iget-wide v5, p2, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/oplus/fancyicon/util/Utils;->dist(Lcom/oplus/fancyicon/util/Utils$Point;Lcom/oplus/fancyicon/util/Utils$Point;Z)D

    move-result-wide v1

    div-double/2addr v3, v1

    const-wide/16 v1, 0x0

    cmpl-double p2, v3, v1

    if-ltz p2, :cond_33

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v3, v1

    if-gtz v1, :cond_33

    iget-wide p1, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    mul-double/2addr p1, v3

    iput-wide p1, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide p1, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    mul-double/2addr v3, p1

    iput-wide v3, v0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/util/Utils$Point;->offset(Lcom/oplus/fancyicon/util/Utils$Point;)V

    return-object v0

    :cond_33
    if-nez p3, :cond_37

    const/4 p0, 0x0

    goto :goto_3a

    :cond_37
    if-ltz p2, :cond_3a

    move-object p0, p1

    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {v0, p3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/fancyicon/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/String;)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {v0, p3}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static resetDefaultThemeFlag()V
    .registers 2

    const-string v0, "resetDefaultThemeFlag: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/oplus/fancyicon/util/Utils;->sDefaultThemeFlag:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/fancyicon/util/Utils;->sThemeFlag:J

    return-void
.end method

.method public static setResourceThemeChange(Landroid/content/res/Resources;Z)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setIsThemeChanged"

    invoke-static {p0, p1, v0}, Lcom/oplus/fancyicon/util/ReflectUtil;->processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_c
    if-ge v0, v1, :cond_2d

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    if-eqz p1, :cond_25

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_25
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {p2, v2}, Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2d
    return-void
.end method

.method public static typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
