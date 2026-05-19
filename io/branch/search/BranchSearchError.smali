.class public Lio/branch/search/BranchSearchError;
.super Lorg/json/JSONObject;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchSearchError$ERR_CODE;
    }
.end annotation


# instance fields
.field private final errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

.field private final errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V
    .registers 2

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p0}, Lio/branch/search/BranchSearchError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    const-string p1, "code"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lio/branch/search/BranchSearchError$ERR_CODE;->a(I)Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-void
.end method

.method private getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_9

    const-string p0, "Poor network connectivity. Please try again later. Please make sure app has internet access permission"

    goto :goto_51

    :cond_9
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->e:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_10

    const-string p0, "Please add \'android.permission.INTERNET\' in your applications manifest file."

    goto :goto_51

    :cond_10
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_17

    const-string p0, "Unable to process your request now. An internal error happened. Please try later."

    goto :goto_51

    :cond_17
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->h:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_1e

    const-string p0, "Request to Branch server timed out. Please check your connection or try again later."

    goto :goto_51

    :cond_1e
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->i:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_25

    const-string p0, "Request was canceled due to new requests being scheduled before it could be completed."

    goto :goto_51

    :cond_25
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->j:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_2c

    const-string p0, "The search service is disabled."

    goto :goto_51

    :cond_2c
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_33

    const-string p0, "Unable to open the destination application or its fallback url."

    goto :goto_51

    :cond_33
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->m:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_3a

    const-string p0, "Unable to open the web url associated with the app."

    goto :goto_51

    :cond_3a
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->n:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_41

    const-string p0, "Unable to open the Google Play Store for the app."

    goto :goto_51

    :cond_41
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->o:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_48

    const-string p0, "An unknown error happened. Unable to open the app."

    goto :goto_51

    :cond_48
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->k:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne p0, v0, :cond_4f

    const-string p0, "On device post-processing error."

    goto :goto_51

    :cond_4f
    const-string p0, "An unknown error occurred."

    :goto_51
    return-object p0
.end method


# virtual methods
.method public getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    return-object p0
.end method
