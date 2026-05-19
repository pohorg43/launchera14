.class public Lcom/oplus/log/nx/sens/pattern/CommPattern;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IMEI_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAC_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "([0-9A-Fa-f]{2}[:-]){5}[0-9A-Fa-f]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/sens/pattern/CommPattern;->MAC_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\d{15}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/sens/pattern/CommPattern;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterIMEILegal(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    sget-object v0, Lcom/oplus/log/nx/sens/pattern/CommPattern;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->repSensLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filterMacLegal(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    sget-object v0, Lcom/oplus/log/nx/sens/pattern/CommPattern;->MAC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->repSensLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static repSensLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/nx/encry/DecryptUtils;->toEncryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_3

    :cond_15
    return-object p0
.end method
