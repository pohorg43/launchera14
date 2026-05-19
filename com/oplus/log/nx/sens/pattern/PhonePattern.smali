.class public Lcom/oplus/log/nx/sens/pattern/PhonePattern;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHINA_PATTERN:Ljava/util/regex/Pattern;

.field private static final HK_PATTERN:Ljava/util/regex/Pattern;

.field private static final NUM_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "^(5|6|8|9)\\d{7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->HK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^((13[0-9])|(14[0,1,4-9])|(15[0-3,5-9])|(16[2,5,6,7])|(17[0-8])|(18[0-9])|(19[0-3,5-9]))\\d{8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->CHINA_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->NUM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterPhoneLegal(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->isChinaPhoneLegal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->CHINA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->repPhoneLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->isHKPhoneLegal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    sget-object p0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->HK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->repPhoneLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method private static isChinaPhoneLegal(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    sget-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->CHINA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isHKPhoneLegal(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    sget-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->HK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->NUM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isPhoneLegal(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->isChinaPhoneLegal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->isHKPhoneLegal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static repPhoneLegal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
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
