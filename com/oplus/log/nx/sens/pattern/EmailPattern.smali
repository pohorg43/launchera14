.class public Lcom/oplus/log/nx/sens/pattern/EmailPattern;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\w+@(\\w+\\.){1,3}[a-zA-Z]{2,4}"

    iput-object v0, p0, Lcom/oplus/log/nx/sens/pattern/EmailPattern;->patternString:Ljava/lang/String;

    return-void
.end method

.method public static filterEmailLegal(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method
