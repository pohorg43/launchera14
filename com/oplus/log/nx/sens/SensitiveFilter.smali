.class public Lcom/oplus/log/nx/sens/SensitiveFilter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mIPattern:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;


# direct methods
.method public constructor <init>(Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/nx/sens/SensitiveFilter;->mIPattern:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;

    return-void
.end method


# virtual methods
.method public innerParserSensitive(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    invoke-static {p1}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->filterIMEILegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->filterMacLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/EmailPattern;->filterEmailLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->filterPhoneLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parserSensitive(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    iget-object p0, p0, Lcom/oplus/log/nx/sens/SensitiveFilter;->mIPattern:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;->filterLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {p1}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->filterIMEILegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/CommPattern;->filterMacLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/EmailPattern;->filterEmailLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/nx/sens/pattern/PhonePattern;->filterPhoneLegal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
